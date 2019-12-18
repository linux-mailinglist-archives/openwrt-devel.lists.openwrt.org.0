Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EC71125653
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Dec 2019 23:10:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:MIME-Version:Message-ID:Date:To:From:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VoTSYOO0nQPUNhN8OI/pYU6wf29UcG2PYVhAQuFVF2I=; b=WVH
	cJ3C6stILGO/Am0sufKSzwNyPZm5lE10kYw/uHq71PZuCfo+fi85NsZ5hi7UnbMxvZEbT0j8ayTHg
	P1Et5Dou/IoRUCltY9neaWVqysTisvfEqarQ+TjwSQqnO9eJFB8ezOjJZSeeP+HqprJgaNnwKy0bB
	NJcFj3K3C9fCMwUh6owUhytqSxl+AE/8qUDEeg0Llox3XC3bhiGDK7ENeSeEimmjasEnCtwsP9V2A
	ROK7NoO0WPAM3CUENMOfPbZXiz2Qu1LVrZ62uUR9rmicyCWNj8LUqVuVm1eCfQ2qaJ/SeSGE7MXcw
	wzVTOn3Ov/EP/JiN5S5FXDKyxf5Onrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihhWv-0005Bt-95; Wed, 18 Dec 2019 22:10:53 +0000
Received: from smtp1.ugent.be ([157.193.71.182])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihhVh-00037x-7U
 for openwrt-devel@lists.openwrt.org; Wed, 18 Dec 2019 22:10:02 +0000
Received: from localhost (mcheck3.ugent.be [157.193.71.89])
 by smtp1.ugent.be (Postfix) with ESMTP id D23A6A0660
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Dec 2019 23:09:28 +0100 (CET)
X-Virus-Scanned: by UGent DICT
Received: from smtp1.ugent.be ([157.193.71.182])
 by localhost (mcheck3.ugent.be [157.193.43.11]) (amavisd-new, port 10024)
 with ESMTP id 9E8zrbRLHIs2 for <openwrt-devel@lists.openwrt.org>;
 Wed, 18 Dec 2019 23:09:28 +0100 (CET)
Received: from xmail402.UGent.be (xmail402.ugent.be [157.193.41.232])
 by smtp1.ugent.be (Postfix) with ESMTP id 875DEA0651
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Dec 2019 23:09:28 +0100 (CET)
Received: from xmail403.UGent.be (157.193.41.233) by xmail402.UGent.be
 (157.193.41.232) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Wed, 18 Dec
 2019 23:09:28 +0100
Received: from xmail403.UGent.be ([fe80::d90c:1bf7:2a8c:3ad9]) by
 xmail403.UGent.be ([fe80::d90c:1bf7:2a8c:3ad9%19]) with mapi id
 15.00.1395.000; Wed, 18 Dec 2019 23:09:28 +0100
From: "Xianjun Jiao (UGent-imec)" <Xianjun.Jiao@UGent.be>
To: "openwrt-devel@lists.openwrt.org" <openwrt-devel@lists.openwrt.org>
Thread-Topic: =?utf-8?B?b3BlbndpZmk6IE9wZW4gc291cmNlIFdpLUZpIOKAnGNoaXDigJ0gb24genlu?=
 =?utf-8?Q?q_FPGA_with_Linux_mac80211_on_ARM?=
Thread-Index: AQHVte/Q+f2bNI0k0E6WBKJ4v38fqA==
Date: Wed, 18 Dec 2019 22:09:27 +0000
Message-ID: <58B9F79D-3B9A-4CAE-BD8A-D1EBF0E9BCD8@UGent.be>
Accept-Language: en-US, nl-BE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
MIME-Version: 1.0
X-Miltered: at jchkm3 with ID 5DFAA398.000 by Joe's j-chkmail
 (http://helpdesk.ugent.be/email/)!
X-j-chkmail-Enveloppe: 5DFAA398.000 from
 xmail402.ugent.be/xmail402.ugent.be/157.193.41.232/xmail402.UGent.be/<Xianjun.Jiao@UGent.be>
X-j-chkmail-Score: MSGID : 5DFAA398.000 on smtp1.ugent.be : j-chkmail score :
 X : R=. U=. O=## B=0.000 -> S=0.166
X-j-chkmail-Status: Ham
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_140937_535175_881A0D9D 
X-CRM114-Status: UNSURE (   2.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [157.193.71.182 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [157.193.71.182 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] =?utf-8?q?openwifi=3A_Open_source_Wi-Fi_?=
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
Content-Type: multipart/mixed; boundary="===============7689032776667449124=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7689032776667449124==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_58B9F79D3B9A4CAEBD8AD1EBF0E9BCD8UGentbe_"

--_000_58B9F79D3B9A4CAEBD8AD1EBF0E9BCD8UGentbe_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGVhciBvcGVud3J0IGZyaWVuZHMsDQoNCg0KQSBtZXNzYWdlIG1heSBpbnRlcmVzdCB5b3UuIE91
ciBvcGVud2lmaSBwcm9qZWN0IGlzIG9ubGluZToNCg0KaHR0cHM6Ly9naXRodWIuY29tL29wZW4t
c2RyL29wZW53aWZpDQoNCg0KRnVsbCBzdGFjayByZWFsIHRpbWUgU0RSIChTb2Z0d2FyZSBEZWZp
bmVkIFJhZGlvKSBXaS1GaSBpbXBsZW1lbnRhdGlvbiBvbiB6eW5xIEZQR0Egd2l0aCBlbWJlZGRl
ZCBBUk0gTGludXguIENvbXBhdGlibGUgd2l0aCBMaW51eCBtYWM4MDIxMSBTb2Z0TUFDIGZyYW1l
d29yay4NCg0KDQpob3N0YXBkLCB3cGFfc3VwcGxpY2FudCBhbmQgb3RoZXIgbmF0aXZlIExpbnV4
IFdpLUZpIHRvb2xzIGFscmVhZHkgd29yayBvdXQgb2YgdGhlIGJveCENCg0KDQpCdXQgZm9yIG9w
ZW53cnQsIEkgaGF2ZSB0b28gbGl0dGxlIGV4cGVyaWVuY2UsIG9ubHkga25vdyB0aGF0IGl0IGlz
IGFsc28gYSBraW5kIG9mIGVtYmVkZGVkIExpbnV4Lg0KDQoNCklzIG9wZW53cnQgYWJvdmUgdGhl
IG1hYzgwMjExIHN1YnN5c3RlbT8NCg0KDQpIb3cgbXVjaCBlZmZvcnQgZG8geW91IHRoaW5rIHdl
IG5lZWQgdG8gcnVuIG9wZW53cnQgb24gdGhlIG9wZW53aWZpIGRlc2lnbj8NCg0KDQpJZiBzb21l
b25lIHdvdWxkIGxpa2UgdG8gd29yayBvbiB0aGlzIHBvcnRpbmcsIHdlIHdpbGwgZGVmaW5pdGVs
eSBoZWxwIQ0KDQoNClRoYW5rcyBmb3IgeW91ciB0aW1lLCBhbmQgaGF2ZSBmdW4hDQoNCkJlc3Qg
cmVnYXJkcywNCi0tDQpYaWFuanVuIEppYW8NClNlbmlvciByZXNlYXJjaGVyLCBpbWVjLUdlbnQg
dW5pdmVyc2l0eQ0KMjEwLjAwNywgSURMYWIsIGlHZW50LCBUZWNobm9sb2dpZXBhcmsgMTI2LCA5
MDUyLCBHaGVudCwgQmVsZ2l1bQ0KTW9iaWxlOiArMzIgNDg0IDU3IDIyIDMyPHRlbDorMzIlMjA0
ODQlMjA1NyUyMDIyJTIwMzI+DQo=

--_000_58B9F79D3B9A4CAEBD8AD1EBF0E9BCD8UGentbe_
Content-Type: text/html; charset="utf-8"
Content-ID: <6DB51EAC11E6E74DB383729EB17945CC@xchange.ugent.be>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IGRpcj0iYXV0byI+DQo8
cCBjbGFzcz0icDEiIHN0eWxlPSJtYXJnaW46IDBweDsgZm9udC1zdHJldGNoOiBub3JtYWw7IGxp
bmUtaGVpZ2h0OiBub3JtYWw7IGNhcmV0LWNvbG9yOiByZ2IoMCwgMCwgMCk7IGNvbG9yOiByZ2Io
MCwgMCwgMCk7IC13ZWJraXQtdGV4dC1zaXplLWFkanVzdDogYXV0bzsiPg0KPHNwYW4gY2xhc3M9
InMxIj5EZWFyIG9wZW53cnQgZnJpZW5kcyw8L3NwYW4+PC9wPg0KPHAgY2xhc3M9InAyIiBzdHls
ZT0ibWFyZ2luOiAwcHg7IGZvbnQtc3RyZXRjaDogbm9ybWFsOyBsaW5lLWhlaWdodDogbm9ybWFs
OyBtaW4taGVpZ2h0OiAyMC4zcHg7IGNhcmV0LWNvbG9yOiByZ2IoMCwgMCwgMCk7IGNvbG9yOiBy
Z2IoMCwgMCwgMCk7IC13ZWJraXQtdGV4dC1zaXplLWFkanVzdDogYXV0bzsiPg0KPHNwYW4gY2xh
c3M9InMxIj48L3NwYW4+PGJyPg0KPC9wPg0KPHAgY2xhc3M9InAxIiBzdHlsZT0ibWFyZ2luOiAw
cHg7IGZvbnQtc3RyZXRjaDogbm9ybWFsOyBsaW5lLWhlaWdodDogbm9ybWFsOyBjYXJldC1jb2xv
cjogcmdiKDAsIDAsIDApOyBjb2xvcjogcmdiKDAsIDAsIDApOyAtd2Via2l0LXRleHQtc2l6ZS1h
ZGp1c3Q6IGF1dG87Ij4NCjxzcGFuIGNsYXNzPSJzMSI+QSBtZXNzYWdlIG1heSBpbnRlcmVzdCB5
b3UuIE91ciBvcGVud2lmaSBwcm9qZWN0IGlzIG9ubGluZTo8L3NwYW4+PC9wPg0KPHAgY2xhc3M9
InAxIiBzdHlsZT0ibWFyZ2luOiAwcHg7IGZvbnQtc3RyZXRjaDogbm9ybWFsOyBsaW5lLWhlaWdo
dDogbm9ybWFsOyBjYXJldC1jb2xvcjogcmdiKDAsIDAsIDApOyBjb2xvcjogcmdiKDAsIDAsIDAp
OyAtd2Via2l0LXRleHQtc2l6ZS1hZGp1c3Q6IGF1dG87Ij4NCjxzcGFuIGNsYXNzPSJzMiIgc3R5
bGU9InRleHQtZGVjb3JhdGlvbjogdW5kZXJsaW5lOyI+PGEgaHJlZj0iaHR0cHM6Ly9naXRodWIu
Y29tL29wZW4tc2RyL29wZW53aWZpIj5odHRwczovL2dpdGh1Yi5jb20vb3Blbi1zZHIvb3Blbndp
Zmk8L2E+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJwMiIgc3R5bGU9Im1hcmdpbjogMHB4OyBmb250
LXN0cmV0Y2g6IG5vcm1hbDsgbGluZS1oZWlnaHQ6IG5vcm1hbDsgbWluLWhlaWdodDogMjAuM3B4
OyBjYXJldC1jb2xvcjogcmdiKDAsIDAsIDApOyBjb2xvcjogcmdiKDAsIDAsIDApOyAtd2Via2l0
LXRleHQtc2l6ZS1hZGp1c3Q6IGF1dG87Ij4NCjxzcGFuIGNsYXNzPSJzMSI+PC9zcGFuPjxicj4N
CjwvcD4NCjxwIGNsYXNzPSJwMSIgc3R5bGU9Im1hcmdpbjogMHB4OyBmb250LXN0cmV0Y2g6IG5v
cm1hbDsgbGluZS1oZWlnaHQ6IG5vcm1hbDsgY2FyZXQtY29sb3I6IHJnYigwLCAwLCAwKTsgY29s
b3I6IHJnYigwLCAwLCAwKTsgLXdlYmtpdC10ZXh0LXNpemUtYWRqdXN0OiBhdXRvOyI+DQo8c3Bh
biBjbGFzcz0iczEiPkZ1bGwgc3RhY2sgcmVhbCB0aW1lIFNEUiAoU29mdHdhcmUgRGVmaW5lZCBS
YWRpbykgV2ktRmkgaW1wbGVtZW50YXRpb24gb24genlucSBGUEdBIHdpdGggZW1iZWRkZWQgQVJN
IExpbnV4LiBDb21wYXRpYmxlIHdpdGggTGludXggbWFjODAyMTEgU29mdE1BQyBmcmFtZXdvcmsu
PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJwMiIgc3R5bGU9Im1hcmdpbjogMHB4OyBmb250LXN0cmV0
Y2g6IG5vcm1hbDsgbGluZS1oZWlnaHQ6IG5vcm1hbDsgbWluLWhlaWdodDogMjAuM3B4OyBjYXJl
dC1jb2xvcjogcmdiKDAsIDAsIDApOyBjb2xvcjogcmdiKDAsIDAsIDApOyAtd2Via2l0LXRleHQt
c2l6ZS1hZGp1c3Q6IGF1dG87Ij4NCjxzcGFuIGNsYXNzPSJzMSI+PC9zcGFuPjxicj4NCjwvcD4N
CjxwIGNsYXNzPSJwMSIgc3R5bGU9Im1hcmdpbjogMHB4OyBmb250LXN0cmV0Y2g6IG5vcm1hbDsg
bGluZS1oZWlnaHQ6IG5vcm1hbDsgY2FyZXQtY29sb3I6IHJnYigwLCAwLCAwKTsgY29sb3I6IHJn
YigwLCAwLCAwKTsgLXdlYmtpdC10ZXh0LXNpemUtYWRqdXN0OiBhdXRvOyI+DQo8c3BhbiBjbGFz
cz0iczEiPmhvc3RhcGQsIHdwYV9zdXBwbGljYW50IGFuZCBvdGhlciBuYXRpdmUgTGludXggV2kt
RmkgdG9vbHMgYWxyZWFkeSB3b3JrIG91dCBvZiB0aGUgYm94ITwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0icDIiIHN0eWxlPSJtYXJnaW46IDBweDsgZm9udC1zdHJldGNoOiBub3JtYWw7IGxpbmUtaGVp
Z2h0OiBub3JtYWw7IG1pbi1oZWlnaHQ6IDIwLjNweDsgY2FyZXQtY29sb3I6IHJnYigwLCAwLCAw
KTsgY29sb3I6IHJnYigwLCAwLCAwKTsgLXdlYmtpdC10ZXh0LXNpemUtYWRqdXN0OiBhdXRvOyI+
DQo8c3BhbiBjbGFzcz0iczEiPjwvc3Bhbj48YnI+DQo8L3A+DQo8cCBjbGFzcz0icDEiIHN0eWxl
PSJtYXJnaW46IDBweDsgZm9udC1zdHJldGNoOiBub3JtYWw7IGxpbmUtaGVpZ2h0OiBub3JtYWw7
IGNhcmV0LWNvbG9yOiByZ2IoMCwgMCwgMCk7IGNvbG9yOiByZ2IoMCwgMCwgMCk7IC13ZWJraXQt
dGV4dC1zaXplLWFkanVzdDogYXV0bzsiPg0KPHNwYW4gY2xhc3M9InMxIj5CdXQgZm9yIG9wZW53
cnQsIEkgaGF2ZSB0b28gbGl0dGxlIGV4cGVyaWVuY2UsIG9ubHkga25vdyB0aGF0IGl0IGlzIGFs
c28gYSBraW5kIG9mIGVtYmVkZGVkIExpbnV4LiZuYnNwOzwvc3Bhbj48L3A+DQo8cCBjbGFzcz0i
cDIiIHN0eWxlPSJtYXJnaW46IDBweDsgZm9udC1zdHJldGNoOiBub3JtYWw7IGxpbmUtaGVpZ2h0
OiBub3JtYWw7IG1pbi1oZWlnaHQ6IDIwLjNweDsgY2FyZXQtY29sb3I6IHJnYigwLCAwLCAwKTsg
Y29sb3I6IHJnYigwLCAwLCAwKTsgLXdlYmtpdC10ZXh0LXNpemUtYWRqdXN0OiBhdXRvOyI+DQo8
c3BhbiBjbGFzcz0iczEiPjwvc3Bhbj48YnI+DQo8L3A+DQo8cCBjbGFzcz0icDEiIHN0eWxlPSJt
YXJnaW46IDBweDsgZm9udC1zdHJldGNoOiBub3JtYWw7IGxpbmUtaGVpZ2h0OiBub3JtYWw7IGNh
cmV0LWNvbG9yOiByZ2IoMCwgMCwgMCk7IGNvbG9yOiByZ2IoMCwgMCwgMCk7IC13ZWJraXQtdGV4
dC1zaXplLWFkanVzdDogYXV0bzsiPg0KPHNwYW4gY2xhc3M9InMxIj5JcyBvcGVud3J0IGFib3Zl
IHRoZSBtYWM4MDIxMSBzdWJzeXN0ZW0/PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJwMiIgc3R5bGU9
Im1hcmdpbjogMHB4OyBmb250LXN0cmV0Y2g6IG5vcm1hbDsgbGluZS1oZWlnaHQ6IG5vcm1hbDsg
bWluLWhlaWdodDogMjAuM3B4OyBjYXJldC1jb2xvcjogcmdiKDAsIDAsIDApOyBjb2xvcjogcmdi
KDAsIDAsIDApOyAtd2Via2l0LXRleHQtc2l6ZS1hZGp1c3Q6IGF1dG87Ij4NCjxzcGFuIGNsYXNz
PSJzMSI+PC9zcGFuPjxicj4NCjwvcD4NCjxwIGNsYXNzPSJwMSIgc3R5bGU9Im1hcmdpbjogMHB4
OyBmb250LXN0cmV0Y2g6IG5vcm1hbDsgbGluZS1oZWlnaHQ6IG5vcm1hbDsgY2FyZXQtY29sb3I6
IHJnYigwLCAwLCAwKTsgY29sb3I6IHJnYigwLCAwLCAwKTsgLXdlYmtpdC10ZXh0LXNpemUtYWRq
dXN0OiBhdXRvOyI+DQo8c3BhbiBjbGFzcz0iczEiPkhvdyBtdWNoIGVmZm9ydCBkbyB5b3UgdGhp
bmsgd2UgbmVlZCB0byBydW4gb3BlbndydCBvbiB0aGUgb3BlbndpZmkgZGVzaWduPzwvc3Bhbj48
L3A+DQo8cCBjbGFzcz0icDIiIHN0eWxlPSJtYXJnaW46IDBweDsgZm9udC1zdHJldGNoOiBub3Jt
YWw7IGxpbmUtaGVpZ2h0OiBub3JtYWw7IG1pbi1oZWlnaHQ6IDIwLjNweDsgY2FyZXQtY29sb3I6
IHJnYigwLCAwLCAwKTsgY29sb3I6IHJnYigwLCAwLCAwKTsgLXdlYmtpdC10ZXh0LXNpemUtYWRq
dXN0OiBhdXRvOyI+DQo8c3BhbiBjbGFzcz0iczEiPjwvc3Bhbj48YnI+DQo8L3A+DQo8cCBjbGFz
cz0icDEiIHN0eWxlPSJtYXJnaW46IDBweDsgZm9udC1zdHJldGNoOiBub3JtYWw7IGxpbmUtaGVp
Z2h0OiBub3JtYWw7IGNhcmV0LWNvbG9yOiByZ2IoMCwgMCwgMCk7IGNvbG9yOiByZ2IoMCwgMCwg
MCk7IC13ZWJraXQtdGV4dC1zaXplLWFkanVzdDogYXV0bzsiPg0KPHNwYW4gY2xhc3M9InMxIj5J
ZiBzb21lb25lIHdvdWxkIGxpa2UgdG8gd29yayBvbiB0aGlzIHBvcnRpbmcsIHdlIHdpbGwgZGVm
aW5pdGVseSBoZWxwITwvc3Bhbj48L3A+DQo8cCBjbGFzcz0icDIiIHN0eWxlPSJtYXJnaW46IDBw
eDsgZm9udC1zdHJldGNoOiBub3JtYWw7IGxpbmUtaGVpZ2h0OiBub3JtYWw7IG1pbi1oZWlnaHQ6
IDIwLjNweDsgY2FyZXQtY29sb3I6IHJnYigwLCAwLCAwKTsgY29sb3I6IHJnYigwLCAwLCAwKTsg
LXdlYmtpdC10ZXh0LXNpemUtYWRqdXN0OiBhdXRvOyI+DQo8c3BhbiBjbGFzcz0iczEiPjwvc3Bh
bj48YnI+DQo8L3A+DQo8cCBjbGFzcz0icDEiIHN0eWxlPSJtYXJnaW46IDBweDsgZm9udC1zdHJl
dGNoOiBub3JtYWw7IGxpbmUtaGVpZ2h0OiBub3JtYWw7IGNhcmV0LWNvbG9yOiByZ2IoMCwgMCwg
MCk7IGNvbG9yOiByZ2IoMCwgMCwgMCk7IC13ZWJraXQtdGV4dC1zaXplLWFkanVzdDogYXV0bzsi
Pg0KPHNwYW4gY2xhc3M9InMxIj5UaGFua3MgZm9yIHlvdXIgdGltZSwgYW5kIGhhdmUgZnVuITwv
c3Bhbj48L3A+DQo8YnI+DQo8ZGl2IGRpcj0ibHRyIj48c3BhbiBzdHlsZT0iYmFja2dyb3VuZC1j
b2xvcjogcmdiYSgyNTUsIDI1NSwgMjU1LCAwKTsiPkJlc3QgcmVnYXJkcyw8YnI+DQotLTxicj4N
ClhpYW5qdW4gSmlhbzxicj4NClNlbmlvciByZXNlYXJjaGVyLCBpbWVjLTwvc3Bhbj48c3BhbiBz
dHlsZT0iYmFja2dyb3VuZC1jb2xvcjogcmdiYSgyNTUsIDI1NSwgMjU1LCAwKTsgZm9udC1zaXpl
OiAxM3B0OyI+R2VudCB1bml2ZXJzaXR5PC9zcGFuPg0KPGRpdj48c3BhbiBzdHlsZT0iYmFja2dy
b3VuZC1jb2xvcjogcmdiYSgyNTUsIDI1NSwgMjU1LCAwKTsiPjIxMC4wMDcsIElETGFiLCBpR2Vu
dCwgVGVjaG5vbG9naWVwYXJrIDEyNiwgOTA1MiwgR2hlbnQsIEJlbGdpdW08YnI+DQpNb2JpbGU6
Jm5ic3A7PGEgaHJlZj0idGVsOiYjNDM7MzIlMjA0ODQlMjA1NyUyMDIyJTIwMzIiIGRpcj0ibHRy
IiB4LWFwcGxlLWRhdGEtZGV0ZWN0b3JzPSJ0cnVlIiB4LWFwcGxlLWRhdGEtZGV0ZWN0b3JzLXR5
cGU9InRlbGVwaG9uZSIgeC1hcHBsZS1kYXRhLWRldGVjdG9ycy1yZXN1bHQ9IjAiPiYjNDM7MzIg
NDg0IDU3IDIyIDMyPC9hPjwvc3Bhbj48L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_58B9F79D3B9A4CAEBD8AD1EBF0E9BCD8UGentbe_--


--===============7689032776667449124==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7689032776667449124==--

