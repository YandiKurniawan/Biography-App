import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

class Transaction {
  String id;
  String title;
  String amount;
  String deskripsi;
  // DateTime date;

  Transaction(
      {this.id,
      this.amount,
      // @required this.date,
      this.title,
      this.deskripsi});
}

final List<Transaction> theUserTransaction = [
  Transaction(
      id: 't1',
      title: 'Hari Kelahiranku',
      amount: '7 April 2000',
      deskripsi: ulangTahunPertamaku
      // date: DateTime.now(),
      ),
  Transaction(
    id: 't2',
    title: 'Ulang Tahun Pertamaku',
    amount: '7 April 2001',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't3',
    title: 'Kata2 Pertamaku',
    amount: '7 April 2002',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't4',
    title: 'Halo Ibukota',
    amount: '7 April 2003',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't5',
    title: 'Memori Indah Di Jakarta',
    amount: '7 April 2004',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't6',
    title: 'Asiknya banjir ',
    amount: '7 April 2005',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't7',
    title: 'Bertemu teman SD Ku',
    amount: '7 April 2006',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't8',
    title: 'Yeay aku ke tasik',
    amount: '7 April 2007',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't9',
    title: 'Hari yang buruk',
    amount: '7 April 2008',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't10',
    title: 'Teman Sejatiku',
    amount: '7 April 2009',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't11',
    title: 'Sekolah agama',
    amount: '7 April 2010',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't12',
    title: 'Kunti yang menyebalkan',
    amount: '7 April 2011',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't13',
    title: 'Tahun terakhirku disekolah',
    amount: '7 April 2012',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't14',
    title: 'Bertemu Teman SMP',
    amount: '7 April 2013',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't15',
    title: 'Chairmate ku yang aneh',
    amount: '7 April 2014',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't16',
    title: 'Lelucon abadi',
    amount: '7 April 2015',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't17',
    title: 'Waktunya SMA',
    amount: '7 April 2016',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't18',
    title: 'Asiknya masa SMA ku',
    amount: '7 April 2017',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't19',
    title: 'Kelas ku yang kompak',
    amount: '7 April 2018',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't20',
    title: 'Menatap masa depan',
    amount: '7 April 2019',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't21',
    title: 'Pangeran impianku',
    amount: '7 April 2020',
    // date: DateTime.now(),
  ),
  Transaction(
    id: 't21',
    title: 'Hallo diriku yang sekarang',
    amount: '7 April 2021',
    // date: DateTime.now(),
  ),
];

String ulangTahunPertamaku =
    'Pada hari Jumat tanggal 7 di bulan april, mamahku tercinta yaitu mimin mempunyai anak pertama, aku lahir dengan';
