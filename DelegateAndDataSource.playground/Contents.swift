import UIKit

//----------------------------
// Model
//----------------------------
struct ServiceOrder{
    let date : Date
    let workDone: String
}

//----------------------------
// Delegate -> Protocol
//----------------------------
protocol ServiceDelegate{
    func didPerformServiceCall(with model: ServiceOrder)
}


//----------------------------
// Datasource -> Protocol
//----------------------------


protocol ServiceDatasource{
    func numberOfServiceCall() -> Int
    func item(for position: Int) -> ServiceOrder
}

//----------------------------
// ViewContoller
//----------------------------
class myViewController: UIViewController, ServiceDelegate, ServiceDatasource{
    func numberOfServiceCall() -> Int {
        return 1
    }
    
    func item(for position: Int) -> ServiceOrder {
        return ServiceOrder(date: Date(), workDone: "General")
    }
    
    
    
    func didPerformServiceCall(with model: ServiceOrder) {
        print(" \(model.date) ")
        print(" \(model.workDone) ")
    }
    
    
    func doService(){
        let serviceSelection = ServiceSelection()
        serviceSelection.delegate = self
        serviceSelection.datasource = self
        
    }
    
}



//-----------------------------------------------------

class ServiceSelection{
    public var delegate: ServiceDelegate?
    
    public var datasource: ServiceDatasource?
    
    func didSelectOilChange(){
        delegate?.didPerformServiceCall(with: ServiceOrder(date: Date(),
                                                           workDone: "Oil Change"))
    }

    func setServiceList(){
        let serviceCount: Int = datasource?.numberOfServiceCall() ?? 0
        
    }






}



