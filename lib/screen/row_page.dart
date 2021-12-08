import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  const RowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
      ),
      body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              detailRow(
                  title: "Row Widget",
                  urlImage:
                      "https://cdn1.iconfinder.com/data/icons/male-profession-colour-flat/1063/2-512.png"),
              detailRow(
                  title: "Column Widget",
                  urlImage:
                      "https://png.pngtree.com/element_our/png_detail/20181024/doctor-avatar-icon-medical-health-specialist-avatar-woman-doctor-avatar-png_217576.jpg"),

              //detailRow(),
            ],
          )),
    );
  }

  Widget detailRow({required String urlImage, required String title}) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        //color: Colors.greenAccent,
        border: Border.all(color: Colors.black, width: 0.1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(urlImage),
            backgroundColor: Colors.transparent,
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Tanggal: 10/12/2021",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                Divider(),
                SizedBox(
                  height: 4,
                ),
                Text(
                    "Row Widget adalah widget yang digunakan untuk menampilkan widget anak secara horizontal.Widget Baris tidak bergulir. Jika Anda memiliki sederet widget dan ingin mereka dapat menggulir jika tida ada cukup ruang, pertimbangkan untuk menggunakan Kelas ListView."),
                TextButton(
                    onPressed: () {
                      print("Click Me");
                    },
                    child: Icon(Icons.delete))
              ],
            ),
          )),
          InkWell(
            onTap: () {
              print("klik inkwell");
            },
            child: Icon(Icons.chevron_right),
          )
        ],
      ),
    );
  }
}
