Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB98812570F
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Dec 2019 23:41:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:In-Reply-To:References:Message-ID:Date:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3ZNX0etZzCKdAUZXAfhtqSBi7peFgsYRabMnrRB4x84=; b=uX2/vW1gAYtTef3VcO/U8sFCZ
	HL1ExZ3vuMxaLBprv4JpsknzFklMeloAmZAFCAkoBV0E/Ia5muj94c7ZAlSFd6ljDGeCQoaGKt2Zo
	r28HQIxDaXQYUzGnqwg8yyVfGpU6UTRT+6qZCq36d1WwPmX2Ue9NiRG471h0nAQ4vEFTH3Q66vPQS
	9D7n5aP1m30fDVjcTUKWdl3MVDoXcKxnxzHJwG8Amnx2nq0VnLKixENcSsQ4j+9kh/AoahiOEzkXl
	4K6RkLo/qHqNmulWPT5v/XpXlSU8tOMqeizDDvXfHgKVuiHcwl/su6YT0V5DV1SQbzy8H9/vsRMhb
	ahXfnCnOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihi0l-0001hR-7J; Wed, 18 Dec 2019 22:41:43 +0000
Received: from smtp1.ugent.be ([157.193.71.182])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihi0c-0001gP-Gy
 for openwrt-devel@lists.openwrt.org; Wed, 18 Dec 2019 22:41:36 +0000
Received: from localhost (mcheck3.ugent.be [157.193.71.89])
 by smtp1.ugent.be (Postfix) with ESMTP id 3E1A3A0545;
 Wed, 18 Dec 2019 23:41:33 +0100 (CET)
X-Virus-Scanned: by UGent DICT
Received: from smtp1.ugent.be ([157.193.71.182])
 by localhost (mcheck3.ugent.be [157.193.43.11]) (amavisd-new, port 10024)
 with ESMTP id Vr18A2sQx6M5; Wed, 18 Dec 2019 23:41:32 +0100 (CET)
Received: from xmail402.UGent.be (xmail402.ugent.be [157.193.41.232])
 by smtp1.ugent.be (Postfix) with ESMTP id AFA1BA0404;
 Wed, 18 Dec 2019 23:41:32 +0100 (CET)
Received: from xmail403.UGent.be (157.193.41.233) by xmail402.UGent.be
 (157.193.41.232) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Wed, 18 Dec
 2019 23:41:32 +0100
Received: from xmail403.UGent.be ([fe80::d90c:1bf7:2a8c:3ad9]) by
 xmail403.UGent.be ([fe80::d90c:1bf7:2a8c:3ad9%19]) with mapi id
 15.00.1395.000; Wed, 18 Dec 2019 23:41:32 +0100
From: "Xianjun Jiao (UGent-imec)" <Xianjun.Jiao@UGent.be>
To: Hauke Mehrtens <hauke@hauke-m.de>
Thread-Topic: =?utf-8?B?W09wZW5XcnQtRGV2ZWxdIG9wZW53aWZpOiBPcGVuIHNvdXJjZSBXaS1GaSA=?=
 =?utf-8?B?4oCcY2hpcOKAnSBvbiB6eW5xIEZQR0Egd2l0aCBMaW51eCBtYWM4MDIxMSBv?=
 =?utf-8?Q?n_ARM?=
Thread-Index: AQHVte/Q+f2bNI0k0E6WBKJ4v38fqKfAapiAgAASHpg=
Date: Wed, 18 Dec 2019 22:41:31 +0000
Message-ID: <92330104-A071-445C-AAC6-5A53DEEB9717@UGent.be>
References: <58B9F79D-3B9A-4CAE-BD8A-D1EBF0E9BCD8@UGent.be>,
 <12b45477-cc74-f344-3b5f-5552b62d03cf@hauke-m.de>
In-Reply-To: <12b45477-cc74-f344-3b5f-5552b62d03cf@hauke-m.de>
Accept-Language: en-US, nl-BE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
MIME-Version: 1.0
X-Miltered: at jchkm1 with ID 5DFAAB1C.004 by Joe's j-chkmail
 (http://helpdesk.ugent.be/email/)!
X-j-chkmail-Enveloppe: 5DFAAB1C.004 from
 xmail402.ugent.be/xmail402.ugent.be/157.193.41.232/xmail402.UGent.be/<Xianjun.Jiao@UGent.be>
X-j-chkmail-Score: MSGID : 5DFAAB1C.004 on smtp1.ugent.be : j-chkmail score :
 X : R=. U=. O=## B=0.000 -> S=0.166
X-j-chkmail-Status: Ham
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_144134_713889_ED0B36D7 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [157.193.71.182 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [157.193.71.182 listed in wl.mailspike.net]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: Re: [OpenWrt-Devel] =?utf-8?q?openwifi=3A_Open_source_Wi-Fi_?=
 =?utf-8?q?=E2=80=9Cchip=E2=80=9D_on_zynq_FPGA_with_Linux_mac80211_on_ARM?=
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============2614138122478781935=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2614138122478781935==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_92330104A071445CAAC65A53DEEB9717UGentbe_"

--_000_92330104A071445CAAC65A53DEEB9717UGentbe_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIHNvIG11Y2ggZm9yIHRoZSBxdWljayByZXNwb25zZS4NCg0KU291bmRzIHByb21pc2lu
Zy4gSSB3aWxsIGRlZmluaXRlbHkgdGFrZSBhIGxvb2sgb24gdGhvc2Ugc3RlcHMuDQoNCkJlc3Qg
cmVnYXJkcywNCi0tDQpYaWFuanVuIEppYW8NClNlbmlvciByZXNlYXJjaGVyLCBpbWVjLUdlbnQg
dW5pdmVyc2l0eQ0KMjEwLjAwNywgSURMYWIsIGlHZW50LCBUZWNobm9sb2dpZXBhcmsgMTI2LCA5
MDUyLCBHaGVudCwgQmVsZ2l1bQ0KTW9iaWxlOiArMzIgNDg0IDU3IDIyIDMyPHRlbDorMzIlMjA0
ODQlMjA1NyUyMDIyJTIwMzI+DQoNCk9uIERlYyAxOCwgMjAxOSwgYXQgMjM6MzYsIEhhdWtlIE1l
aHJ0ZW5zIDxoYXVrZUBoYXVrZS1tLmRlPiB3cm90ZToNCg0K77u/T24gMTIvMTgvMTkgMTE6MDkg
UE0sIFhpYW5qdW4gSmlhbyAoVUdlbnQtaW1lYykgd3JvdGU6DQpEZWFyIG9wZW53cnQgZnJpZW5k
cywNCg0KDQpBIG1lc3NhZ2UgbWF5IGludGVyZXN0IHlvdS4gT3VyIG9wZW53aWZpIHByb2plY3Qg
aXMgb25saW5lOg0KDQpodHRwczovL2dpdGh1Yi5jb20vb3Blbi1zZHIvb3BlbndpZmkNCg0KDQpG
dWxsIHN0YWNrIHJlYWwgdGltZSBTRFIgKFNvZnR3YXJlIERlZmluZWQgUmFkaW8pIFdpLUZpIGlt
cGxlbWVudGF0aW9uDQpvbiB6eW5xIEZQR0Egd2l0aCBlbWJlZGRlZCBBUk0gTGludXguIENvbXBh
dGlibGUgd2l0aCBMaW51eCBtYWM4MDIxMQ0KU29mdE1BQyBmcmFtZXdvcmsuDQoNCg0KaG9zdGFw
ZCwgd3BhX3N1cHBsaWNhbnQgYW5kIG90aGVyIG5hdGl2ZSBMaW51eCBXaS1GaSB0b29scyBhbHJl
YWR5IHdvcmsNCm91dCBvZiB0aGUgYm94IQ0KDQoNCkJ1dCBmb3Igb3BlbndydCwgSSBoYXZlIHRv
byBsaXR0bGUgZXhwZXJpZW5jZSwgb25seSBrbm93IHRoYXQgaXQgaXMgYWxzbw0KYSBraW5kIG9m
IGVtYmVkZGVkIExpbnV4Lg0KDQoNCklzIG9wZW53cnQgYWJvdmUgdGhlIG1hYzgwMjExIHN1YnN5
c3RlbT8NCg0KDQpIb3cgbXVjaCBlZmZvcnQgZG8geW91IHRoaW5rIHdlIG5lZWQgdG8gcnVuIG9w
ZW53cnQgb24gdGhlIG9wZW53aWZpIGRlc2lnbj8NCg0KDQpJZiBzb21lb25lIHdvdWxkIGxpa2Ug
dG8gd29yayBvbiB0aGlzIHBvcnRpbmcsIHdlIHdpbGwgZGVmaW5pdGVseSBoZWxwIQ0KDQoNCkhp
LA0KDQpJbnRlcmVzdGluZyBwcm9qZWN0LCBJIHdvdWxkIGxpa2UgdG8gc2VlIHN1cHBvcnQgZm9y
IHRoaXMgaW4gT3BlbldydC4NCg0KT3BlbldydCBpcyBhIExpbnV4IGRpc3RyaWJ1dGlvbiB3aGlj
aCBhbHNvIHNoaXBzIG1hYzgwMjExIGFuZCBvdGhlcg0KZHJpdmVycyBhbmQgdXNlciBzcGFjZSBj
b21wb25lbnRzLg0KDQpUaGUgenlucSB0YXJnZXQgaXMgYWxyZWFkeSBzdXBwb3J0IGluIE9wZW5X
cnQgbWFzdGVyLCBzZWUgaGVyZToNCmh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLz9wPW9wZW53cnQv
b3BlbndydC5naXQ7YT10cmVlO2Y9dGFyZ2V0L2xpbnV4L3p5bnE7aD1kMjBmODQ4ZmNhNWQ2ZGUy
ZTNhZmQ4OGZjMjA4YWE5NzQ3YjhiMTAxO2hiPUhFQUQNCg0KWW91IGhhdmUgdG8gYWRkIHN1cHBv
cnQgZm9yIHlvdSBicm9hZCB0byB0aGUgenlucSB0YXJnZXQsIHNlZSBoZXJlIGZvcg0KYW4gZXhh
bXBsZSBvZiBhbiBvdGhlciBib2FyZDoNCmh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLz9wPW9wZW53
cnQvb3BlbndydC5naXQ7YT1jb21taXRkaWZmO2g9NjRmNGMzZWYzNTc4MTVlNWQ4Yzc4MGEwZDAy
OTI0YjkxNzZkYjc5NA0KDQpUaGVuIHlvdSB3b3VsZCBhbHJlYWR5IGdldCBpbWFnZXMgZm9yIHlv
dSBib2FyZCB1c2luZyBrZXJuZWwgNC4xOS4NCg0KVGhlbiB5b3UgaGF2ZSB0byBhZGQgeW91ciB3
aWZpIGRyaXZlciwgeW91IGNhbiB1c2UgdGhlIGludGVncmF0aW9uIG9mDQp0aGUgbXdsd2lmaSBk
cml2ZXIgYXMgYW4gZXhhbXBsZToNCmh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLz9wPW9wZW53cnQv
b3BlbndydC5naXQ7YT1ibG9iO2Y9cGFja2FnZS9rZXJuZWwvbXdsd2lmaS9NYWtlZmlsZTtoPWFh
OGVlYTA0NTBhMmUxNmE0NjBjMmYxOGFmMWZhNmEzZGNjMDdhMGM7aGI9SEVBRA0KVGhpcyBidWls
ZHMgYWdhaW5zdCBtYWM4MDIxMSBmcm9tIGtlcm5lbCA1LjQgcHJvdmlkZWQgYnkgYmFja3BvcnRz
Lg0KDQpUaGVuIHlvdSBzaG91bGQgYWRkIHlvdXIgb3RoZXIgdXNlciBzcGFjZSB0b29scyBhcyBu
b3JtYWwgT3BlbldydCBwYWNrYWdlcy4NCllvdSBzaG91bGQgbGlzdCB0aGUgYmFzaWMgcGFja2Fn
ZXMgeW91IG5lZWQgaW4gdGhlIERFVklDRV9QQUNLQUdFUw0KdmFyaWFibGUgaW4gdGhlIGJvYXJk
IGRlZmluaXRpb24gaW4gdGFyZ2V0L2xpbnV4L3p5bnEvaW1hZ2UvTWFrZWZpbGUgdG8NCmNyZWF0
ZSBpbWFnZXMgd2l0aCB5b3VyIHdpZmkgZHJpdmVyIGJ5IGRlZmF1bHQuDQoNCkhhdWtlDQo=

--_000_92330104A071445CAAC65A53DEEB9717UGentbe_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IGRpcj0iYXV0byI+DQpU
aGFua3Mgc28gbXVjaCBmb3IgdGhlIHF1aWNrIHJlc3BvbnNlLiZuYnNwOw0KPGRpdj48YnI+DQo8
L2Rpdj4NCjxkaXY+U291bmRzIHByb21pc2luZy4gSSB3aWxsIGRlZmluaXRlbHkgdGFrZSBhIGxv
b2sgb24gdGhvc2Ugc3RlcHMuPGJyPg0KPGJyPg0KPGRpdiBkaXI9Imx0ciI+PHNwYW4gc3R5bGU9
ImJhY2tncm91bmQtY29sb3I6IHJnYmEoMjU1LCAyNTUsIDI1NSwgMCk7Ij5CZXN0IHJlZ2FyZHMs
PGJyPg0KLS08YnI+DQpYaWFuanVuIEppYW88YnI+DQpTZW5pb3IgcmVzZWFyY2hlciwgaW1lYy08
L3NwYW4+PHNwYW4gc3R5bGU9ImJhY2tncm91bmQtY29sb3I6IHJnYmEoMjU1LCAyNTUsIDI1NSwg
MCk7IGZvbnQtc2l6ZTogMTNwdDsiPkdlbnQgdW5pdmVyc2l0eTwvc3Bhbj4NCjxkaXY+PHNwYW4g
c3R5bGU9ImJhY2tncm91bmQtY29sb3I6IHJnYmEoMjU1LCAyNTUsIDI1NSwgMCk7Ij4yMTAuMDA3
LCBJRExhYiwgaUdlbnQsIFRlY2hub2xvZ2llcGFyayAxMjYsIDkwNTIsIEdoZW50LCBCZWxnaXVt
PGJyPg0KTW9iaWxlOiZuYnNwOzxhIGhyZWY9InRlbDomIzQzOzMyJTIwNDg0JTIwNTclMjAyMiUy
MDMyIiBkaXI9Imx0ciIgeC1hcHBsZS1kYXRhLWRldGVjdG9ycz0idHJ1ZSIgeC1hcHBsZS1kYXRh
LWRldGVjdG9ycy10eXBlPSJ0ZWxlcGhvbmUiIHgtYXBwbGUtZGF0YS1kZXRlY3RvcnMtcmVzdWx0
PSIwIj4mIzQzOzMyIDQ4NCA1NyAyMiAzMjwvYT48L3NwYW4+PC9kaXY+DQo8L2Rpdj4NCjxkaXYg
ZGlyPSJsdHIiPjxicj4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPk9uIERlYyAxOCwgMjAxOSwg
YXQgMjM6MzYsIEhhdWtlIE1laHJ0ZW5zICZsdDtoYXVrZUBoYXVrZS1tLmRlJmd0OyB3cm90ZTo8
YnI+DQo8YnI+DQo8L2Jsb2NrcXVvdGU+DQo8L2Rpdj4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUi
Pg0KPGRpdiBkaXI9Imx0ciI+77u/PHNwYW4+T24gMTIvMTgvMTkgMTE6MDkgUE0sIFhpYW5qdW4g
SmlhbyAoVUdlbnQtaW1lYykgd3JvdGU6PC9zcGFuPjxicj4NCjxibG9ja3F1b3RlIHR5cGU9ImNp
dGUiPjxzcGFuPkRlYXIgb3BlbndydCBmcmllbmRzLDwvc3Bhbj48YnI+DQo8L2Jsb2NrcXVvdGU+
DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj48c3Bhbj48L3NwYW4+PGJyPg0KPC9ibG9ja3F1b3Rl
Pg0KPGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSI+PHNwYW4+PC9zcGFuPjxicj4NCjwvYmxvY2txdW90
ZT4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPjxzcGFuPkEgbWVzc2FnZSBtYXkgaW50ZXJlc3Qg
eW91LiBPdXIgb3BlbndpZmkgcHJvamVjdCBpcyBvbmxpbmU6PC9zcGFuPjxicj4NCjwvYmxvY2tx
dW90ZT4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPjxzcGFuPjwvc3Bhbj48YnI+DQo8L2Jsb2Nr
cXVvdGU+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj48c3Bhbj5odHRwczovL2dpdGh1Yi5jb20v
b3Blbi1zZHIvb3BlbndpZmk8L3NwYW4+PGJyPg0KPC9ibG9ja3F1b3RlPg0KPGJsb2NrcXVvdGUg
dHlwZT0iY2l0ZSI+PHNwYW4+PC9zcGFuPjxicj4NCjwvYmxvY2txdW90ZT4NCjxibG9ja3F1b3Rl
IHR5cGU9ImNpdGUiPjxzcGFuPjwvc3Bhbj48YnI+DQo8L2Jsb2NrcXVvdGU+DQo8YmxvY2txdW90
ZSB0eXBlPSJjaXRlIj48c3Bhbj5GdWxsIHN0YWNrIHJlYWwgdGltZSBTRFIgKFNvZnR3YXJlIERl
ZmluZWQgUmFkaW8pIFdpLUZpIGltcGxlbWVudGF0aW9uPC9zcGFuPjxicj4NCjwvYmxvY2txdW90
ZT4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPjxzcGFuPm9uIHp5bnEgRlBHQSB3aXRoIGVtYmVk
ZGVkIEFSTSBMaW51eC4gQ29tcGF0aWJsZSB3aXRoIExpbnV4IG1hYzgwMjExPC9zcGFuPjxicj4N
CjwvYmxvY2txdW90ZT4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPjxzcGFuPlNvZnRNQUMgZnJh
bWV3b3JrLjwvc3Bhbj48YnI+DQo8L2Jsb2NrcXVvdGU+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRl
Ij48c3Bhbj48L3NwYW4+PGJyPg0KPC9ibG9ja3F1b3RlPg0KPGJsb2NrcXVvdGUgdHlwZT0iY2l0
ZSI+PHNwYW4+PC9zcGFuPjxicj4NCjwvYmxvY2txdW90ZT4NCjxibG9ja3F1b3RlIHR5cGU9ImNp
dGUiPjxzcGFuPmhvc3RhcGQsIHdwYV9zdXBwbGljYW50IGFuZCBvdGhlciBuYXRpdmUgTGludXgg
V2ktRmkgdG9vbHMgYWxyZWFkeSB3b3JrPC9zcGFuPjxicj4NCjwvYmxvY2txdW90ZT4NCjxibG9j
a3F1b3RlIHR5cGU9ImNpdGUiPjxzcGFuPm91dCBvZiB0aGUgYm94ITwvc3Bhbj48YnI+DQo8L2Js
b2NrcXVvdGU+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj48c3Bhbj48L3NwYW4+PGJyPg0KPC9i
bG9ja3F1b3RlPg0KPGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSI+PHNwYW4+PC9zcGFuPjxicj4NCjwv
YmxvY2txdW90ZT4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPjxzcGFuPkJ1dCBmb3Igb3Blbndy
dCwgSSBoYXZlIHRvbyBsaXR0bGUgZXhwZXJpZW5jZSwgb25seSBrbm93IHRoYXQgaXQgaXMgYWxz
bzwvc3Bhbj48YnI+DQo8L2Jsb2NrcXVvdGU+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj48c3Bh
bj5hIGtpbmQgb2YgZW1iZWRkZWQgTGludXguJm5ic3A7PC9zcGFuPjxicj4NCjwvYmxvY2txdW90
ZT4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPjxzcGFuPjwvc3Bhbj48YnI+DQo8L2Jsb2NrcXVv
dGU+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj48c3Bhbj48L3NwYW4+PGJyPg0KPC9ibG9ja3F1
b3RlPg0KPGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSI+PHNwYW4+SXMgb3BlbndydCBhYm92ZSB0aGUg
bWFjODAyMTEgc3Vic3lzdGVtPzwvc3Bhbj48YnI+DQo8L2Jsb2NrcXVvdGU+DQo8YmxvY2txdW90
ZSB0eXBlPSJjaXRlIj48c3Bhbj48L3NwYW4+PGJyPg0KPC9ibG9ja3F1b3RlPg0KPGJsb2NrcXVv
dGUgdHlwZT0iY2l0ZSI+PHNwYW4+PC9zcGFuPjxicj4NCjwvYmxvY2txdW90ZT4NCjxibG9ja3F1
b3RlIHR5cGU9ImNpdGUiPjxzcGFuPkhvdyBtdWNoIGVmZm9ydCBkbyB5b3UgdGhpbmsgd2UgbmVl
ZCB0byBydW4gb3BlbndydCBvbiB0aGUgb3BlbndpZmkgZGVzaWduPzwvc3Bhbj48YnI+DQo8L2Js
b2NrcXVvdGU+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj48c3Bhbj48L3NwYW4+PGJyPg0KPC9i
bG9ja3F1b3RlPg0KPGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSI+PHNwYW4+PC9zcGFuPjxicj4NCjwv
YmxvY2txdW90ZT4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPjxzcGFuPklmIHNvbWVvbmUgd291
bGQgbGlrZSB0byB3b3JrIG9uIHRoaXMgcG9ydGluZywgd2Ugd2lsbCBkZWZpbml0ZWx5IGhlbHAh
PC9zcGFuPjxicj4NCjwvYmxvY2txdW90ZT4NCjxzcGFuPjwvc3Bhbj48YnI+DQo8c3Bhbj48L3Nw
YW4+PGJyPg0KPHNwYW4+SGksPC9zcGFuPjxicj4NCjxzcGFuPjwvc3Bhbj48YnI+DQo8c3Bhbj5J
bnRlcmVzdGluZyBwcm9qZWN0LCBJIHdvdWxkIGxpa2UgdG8gc2VlIHN1cHBvcnQgZm9yIHRoaXMg
aW4gT3BlbldydC48L3NwYW4+PGJyPg0KPHNwYW4+PC9zcGFuPjxicj4NCjxzcGFuPk9wZW5XcnQg
aXMgYSBMaW51eCBkaXN0cmlidXRpb24gd2hpY2ggYWxzbyBzaGlwcyBtYWM4MDIxMSBhbmQgb3Ro
ZXI8L3NwYW4+PGJyPg0KPHNwYW4+ZHJpdmVycyBhbmQgdXNlciBzcGFjZSBjb21wb25lbnRzLjwv
c3Bhbj48YnI+DQo8c3Bhbj48L3NwYW4+PGJyPg0KPHNwYW4+VGhlIHp5bnEgdGFyZ2V0IGlzIGFs
cmVhZHkgc3VwcG9ydCBpbiBPcGVuV3J0IG1hc3Rlciwgc2VlIGhlcmU6PC9zcGFuPjxicj4NCjxz
cGFuPmh0dHBzOi8vZ2l0Lm9wZW53cnQub3JnLz9wPW9wZW53cnQvb3BlbndydC5naXQ7YT10cmVl
O2Y9dGFyZ2V0L2xpbnV4L3p5bnE7aD1kMjBmODQ4ZmNhNWQ2ZGUyZTNhZmQ4OGZjMjA4YWE5NzQ3
YjhiMTAxO2hiPUhFQUQ8L3NwYW4+PGJyPg0KPHNwYW4+PC9zcGFuPjxicj4NCjxzcGFuPllvdSBo
YXZlIHRvIGFkZCBzdXBwb3J0IGZvciB5b3UgYnJvYWQgdG8gdGhlIHp5bnEgdGFyZ2V0LCBzZWUg
aGVyZSBmb3I8L3NwYW4+PGJyPg0KPHNwYW4+YW4gZXhhbXBsZSBvZiBhbiBvdGhlciBib2FyZDo8
L3NwYW4+PGJyPg0KPHNwYW4+aHR0cHM6Ly9naXQub3BlbndydC5vcmcvP3A9b3BlbndydC9vcGVu
d3J0LmdpdDthPWNvbW1pdGRpZmY7aD02NGY0YzNlZjM1NzgxNWU1ZDhjNzgwYTBkMDI5MjRiOTE3
NmRiNzk0PC9zcGFuPjxicj4NCjxzcGFuPjwvc3Bhbj48YnI+DQo8c3Bhbj5UaGVuIHlvdSB3b3Vs
ZCBhbHJlYWR5IGdldCBpbWFnZXMgZm9yIHlvdSBib2FyZCB1c2luZyBrZXJuZWwgNC4xOS48L3Nw
YW4+PGJyPg0KPHNwYW4+PC9zcGFuPjxicj4NCjxzcGFuPlRoZW4geW91IGhhdmUgdG8gYWRkIHlv
dXIgd2lmaSBkcml2ZXIsIHlvdSBjYW4gdXNlIHRoZSBpbnRlZ3JhdGlvbiBvZjwvc3Bhbj48YnI+
DQo8c3Bhbj50aGUgbXdsd2lmaSBkcml2ZXIgYXMgYW4gZXhhbXBsZTo8L3NwYW4+PGJyPg0KPHNw
YW4+aHR0cHM6Ly9naXQub3BlbndydC5vcmcvP3A9b3BlbndydC9vcGVud3J0LmdpdDthPWJsb2I7
Zj1wYWNrYWdlL2tlcm5lbC9td2x3aWZpL01ha2VmaWxlO2g9YWE4ZWVhMDQ1MGEyZTE2YTQ2MGMy
ZjE4YWYxZmE2YTNkY2MwN2EwYztoYj1IRUFEPC9zcGFuPjxicj4NCjxzcGFuPlRoaXMgYnVpbGRz
IGFnYWluc3QgbWFjODAyMTEgZnJvbSBrZXJuZWwgNS40IHByb3ZpZGVkIGJ5IGJhY2twb3J0cy48
L3NwYW4+PGJyPg0KPHNwYW4+PC9zcGFuPjxicj4NCjxzcGFuPlRoZW4geW91IHNob3VsZCBhZGQg
eW91ciBvdGhlciB1c2VyIHNwYWNlIHRvb2xzIGFzIG5vcm1hbCBPcGVuV3J0IHBhY2thZ2VzLjwv
c3Bhbj48YnI+DQo8c3Bhbj5Zb3Ugc2hvdWxkIGxpc3QgdGhlIGJhc2ljIHBhY2thZ2VzIHlvdSBu
ZWVkIGluIHRoZSBERVZJQ0VfUEFDS0FHRVM8L3NwYW4+PGJyPg0KPHNwYW4+dmFyaWFibGUgaW4g
dGhlIGJvYXJkIGRlZmluaXRpb24gaW4gdGFyZ2V0L2xpbnV4L3p5bnEvaW1hZ2UvTWFrZWZpbGUg
dG88L3NwYW4+PGJyPg0KPHNwYW4+Y3JlYXRlIGltYWdlcyB3aXRoIHlvdXIgd2lmaSBkcml2ZXIg
YnkgZGVmYXVsdC48L3NwYW4+PGJyPg0KPHNwYW4+PC9zcGFuPjxicj4NCjxzcGFuPkhhdWtlPC9z
cGFuPjxicj4NCjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+
DQo=

--_000_92330104A071445CAAC65A53DEEB9717UGentbe_--


--===============2614138122478781935==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2614138122478781935==--

