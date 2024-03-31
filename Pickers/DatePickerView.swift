import SwiftUI

struct DatePickerView: View {
    @State private var birthday = Date()
    
    @State private var alarm = Date()
    
    @State private var dates: Set<DateComponents> = []




    var body: some View {
        
        VStack{
            HStack{
                Text("Single Date Picker")
                    .font(.system(size: 12)) // Makes the font size smaller
                    .foregroundColor(.gray)
                Spacer()
            }
            
            DatePicker(selection: $birthday,
                in: ...Date(),
                displayedComponents: .date,
                label: {
                    Text("Date")
                }
                
            )
        }
        
        VStack{
            HStack{
                Text("Time Picker")
                    .font(.system(size: 12)) // Makes the font size smaller
                    .foregroundColor(.gray)
                Spacer()
            }
            DatePicker("Time",
                selection: $alarm,
                displayedComponents: .hourAndMinute
            )
        }

        

        VStack{
            HStack{
                Text("MultiDate Picker")
                    .font(.system(size: 12)) // Makes the font size smaller
                    .foregroundColor(.gray)
                Spacer()
            }
            MultiDatePicker("Label", selection: $dates)
        }
        
        
    }
}
