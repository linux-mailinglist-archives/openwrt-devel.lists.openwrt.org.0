Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6646135F8F
	for <lists+openwrt-devel@lfdr.de>; Wed,  5 Jun 2019 16:48:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XCjwlYubMz80fcsZGBDkR25DqtN4GUGJVLWG4kdzo90=; b=YmHTaebm/6OyRb
	ylECCqkxb2oYcoAcgMMuvk9r7UnvCCveqBJurUEmmRnyqH9gNmzp9eKrghH3gNlhB87xyrvAzU/on
	S9hGsW4BosoopwrES0yI1EiRZlLRtWTMOqT69cy4F3+rWnMzmZGdu+0UuvFQjEYrH67UwWpifFqNF
	EPC6Jopfbs3uo3nkLKbtGEfuNsCzsLzRioaaTKuGP/c+D/bA2cAUBN46xn4M9ofkm2bFTcPvEPWAZ
	QOcMsKEPEYWjepGMKyQGuGAQJ9/tPpPowEtdfcG9i3xaqis+O5CdGZbcQdzqN1Qnr0XDK0qOV76nA
	fD5/rtIDbGNNffFs5xsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYXDh-00059o-IM; Wed, 05 Jun 2019 14:48:53 +0000
Received: from mx-out.tlen.pl ([193.222.135.148])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYXDZ-00059V-Gd
 for openwrt-devel@lists.openwrt.org; Wed, 05 Jun 2019 14:48:47 +0000
Received: (wp-smtpd smtp.tlen.pl 27617 invoked from network);
 5 Jun 2019 16:48:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=o2.pl; s=1024a;
 t=1559746122; bh=Ywj9sAWEtSK8otXVWwwzKP6YmHMnMaEyQklAHTCmG18=;
 h=Subject:From:To:Cc;
 b=W0qIDh/xtzfzLfkDoS54DKTPV182KC+dIdb54N8Yqu60CmJaJPImcSk668eoUN7ZB
 6fX4W6ID7I1B1VY8oB/1I3WGpQvUB1GIVb7nAtBVSrVJrF5x8ps/+zpEzaC7bh7kTN
 +kpr5iQkndi2iuemm/DH/yYmttq2VBu6zp/4o7Ps=
Received: from 131.ip-164-132-48.eu (HELO [10.8.0.6])
 (tomek_n@o2.pl@[164.132.48.131]) (envelope-sender <tomek_n@o2.pl>)
 by smtp.tlen.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <marek.behun@nic.cz>; 5 Jun 2019 16:48:42 +0200
From: Tomasz Maciej Nowak <tomek_n@o2.pl>
To: openwrt-devel@lists.openwrt.org
References: <20190605143124.7598-1-tomek_n@o2.pl>
Message-ID: <afd7c923-2f0c-ffc2-0eb6-e13bc70a163e@o2.pl>
Date: Wed, 5 Jun 2019 16:48:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190605143124.7598-1-tomek_n@o2.pl>
Content-Language: en-US
X-WP-MailID: 42e1e99ecc6e8dac8c8d3adaf70a1859
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000000 [cYO0]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_074845_714253_F040EF05 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tomek_n[at]o2.pl)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] mvebu: add kernel 4.19 support
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Vladimir Vid <vladimir.vid@sartura.hr>,
 Marko Ratkaj <marko.ratkaj@sartura.hr>,
 =?UTF-8?Q?Marek_Beh=c3=ban?= <marek.behun@nic.cz>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VyBkbml1IDA1LjA2LjIwMTkgb8KgMTY6MzEsIFRvbWFzeiBNYWNpZWogTm93YWsgcGlzemU6Cj4g
RnJvbTogTWFya28gUmF0a2FqIDxtYXJrby5yYXRrYWpAc2FydHVyYS5ocj4KPiAKPiBDYzogVmxh
ZGltaXIgVmlkIDx2bGFkaW1pci52aWRAc2FydHVyYS5ocj4KPiBTaWduZWQtb2ZmLWJ5OiBNYXJr
byBSYXRrYWogPG1hcmtvLnJhdGthakBzYXJ0dXJhLmhyPgo+IFthZGRlZCBzZnAgcmVsYXRlZCBw
YXRjaGVzIGZyb20gUnVzc2VsbCBLaW5nXQo+IFNpZ25lZC1vZmYtYnk6IE1hcmVrIEJlaMO6biA8
bWFyZWsuYmVodW5AbmljLmN6Pgo+IFtyZWJhc2U7IHJld29yayBwYXRjaGVzOyBzZXBhcmF0ZSBh
bmQgY2xlYW51cCBrZXJuZWwgY29uZmlnczsKPiBhZGQgZXNwZXNzb2JpbiBkdHM7IGFkanVzdCB2
ZW5vbSBkdHNdCj4gU2lnbmVkLW9mZi1ieTogVG9tYXN6IE1hY2llaiBOb3dhayA8dG9tZWtfbkBv
Mi5wbD4KPiAtLS0KPiAgdGFyZ2V0L2xpbnV4L212ZWJ1L01ha2VmaWxlICAgICAgICAgICAgICAg
ICAgIHwgICAxICsKPiAgdGFyZ2V0L2xpbnV4L212ZWJ1L2NvbmZpZy00LjE5ICAgICAgICAgICAg
ICAgIHwgNTAxICsrKysrKysrKysrKwo+ICAuLi4vY29ydGV4YTUzL3tjb25maWctZGVmYXVsdCA9
PiBjb25maWctNC4xNH0gfCAgIDAKPiAgdGFyZ2V0L2xpbnV4L212ZWJ1L2NvcnRleGE1My9jb25m
aWctNC4xOSAgICAgIHwgMTE0ICsrKwo+ICAuLi4vY29ydGV4YTcyL3tjb25maWctZGVmYXVsdCA9
PiBjb25maWctNC4xNH0gfCAgIDAKPiAgdGFyZ2V0L2xpbnV4L212ZWJ1L2NvcnRleGE3Mi9jb25m
aWctNC4xOSAgICAgIHwgMTIyICsrKwo+ICAuLi4vYXJtL2Jvb3QvZHRzL2FybWFkYS0zODUtbGlu
a3N5cy12ZW5vbS5kdHMgfCAyMTMgKysrKysKPiAgLi4uL21hcnZlbGwvYXJtYWRhLTM3MjAtZXNw
cmVzc29iaW4tZW1tYy5kdHMgIHwgIDI4ICsKPiAgLi4uL2FybWFkYS0zNzIwLWVzcHJlc3NvYmlu
LXY3LWVtbWMuZHRzICAgICAgIHwgIDQzICsKPiAgLi4uL21hcnZlbGwvYXJtYWRhLTM3MjAtZXNw
cmVzc29iaW4tdjcuZHRzICAgIHwgIDMxICsKPiAgLi4uL3BhdGNoZXMtNC4xOS8wMDItYWRkX3Bv
d2VydGFibGVzLnBhdGNoICAgIHwgNzcwICsrKysrKysrKysrKysrKysrKwo+ICAuLi4vcGF0Y2hl
cy00LjE5LzAwMy1hZGRfc3dpdGNoX25vZGVzLnBhdGNoICAgfCAgNDAgKwo+ICAuLi4vMDA0LWFk
ZF9zYXRhX2Rpc2tfYWN0aXZpdHlfdHJpZ2dlci5wYXRjaCAgfCAgMzkgKwo+ICAuLi41LWxpbmtz
eXNfaGFyZGNvZGVfbmFuZF9lY2Nfc2V0dGluZ3MucGF0Y2ggfCAgMTcgKwo+ICAuLi5NYW5nbGUt
Ym9vdGxvYWRlci1zLWtlcm5lbC1hcmd1bWVudHMucGF0Y2ggfCAyMDEgKysrKysKPiAgLi4uL3Bh
dGNoZXMtNC4xOS8xMDAtZmluZF9hY3RpdmVfcm9vdC5wYXRjaCAgIHwgIDYwICsrCj4gIC4uLi9w
YXRjaGVzLTQuMTkvMTAyLXJldmVydF9pMmNfZGVsYXkucGF0Y2ggICB8ICAxNSArCj4gIC4uLi8y
MDUtYXJtYWRhLTM4NS1yZC1tdGQtcGFydGl0aW9ucy5wYXRjaCAgICB8ICAxOSArCj4gIC4uLi8y
MDYtQVJNLW12ZWJ1LTM4NS1hcC1BZGQtcGFydGl0aW9ucy5wYXRjaCB8ICAzNSArCj4gIC4uLi8y
MTAtY2xlYXJmb2dfc3dpdGNoX25vZGUucGF0Y2ggICAgICAgICAgICB8ICAyMSArCj4gIC4uLi8y
MjAtZGlzYWJsZS11bnRlc3RlZC1kc2EtYm9hcmRzLnBhdGNoICAgICB8ICAzMCArCj4gIC4uLi1h
cm1hZGEteHAtbGlua3N5cy1tYW1iYS1icm9rZW4taWRsZS5wYXRjaCB8ICAxMCArCj4gIC4uLi8z
MDAtbXZuZXRhLXR4LXF1ZXVlLXdvcmthcm91bmQucGF0Y2ggICAgICB8ICAzNSArCj4gIC4uLmRp
Y2F0ZS1mYWlsdXJlLXRvLWVudGVyLWRlZXBlci1zbGVlcC5wYXRjaCB8ICA0MCArCj4gIC4uLi1w
Y2ktbXZlYnUtdGltZS1vdXQtcmVzZXQtb24tbGluay11cC5wYXRjaCB8ICA2MCArKwo+ICAuLi4t
Y2FsbC1tYWNfY29uZmlnLWR1cmluZy1yZXNvbHZlLXdoZW4ucGF0Y2ggfCAgNDQgKwo+ICAuLi5p
bmstZW5zdXJlLWluYmFuZC1BTi13b3Jrcy1jb3JyZWN0bHkucGF0Y2ggfCAgNTkgKysKPiAgLi4u
ZXRkZXYtc2ZwX2J1cy1hbmQtdXNlLWZvci1zdGFydC1zdG9wLnBhdGNoIHwgIDM5ICsKPiAgLi4u
NS1uZXQtcGh5LW1hcnZlbGwxMGctYWRkLVNGUC1zdXBwb3J0LnBhdGNoIHwgMTU1ICsrKysKPiAg
Li4uLzQwNi1zZnAtYWRkLXNmcC1jb21wYXRpYmxlLnBhdGNoICAgICAgICAgIHwgIDI0ICsKPiAg
Li4uNy1zZnAtZGlzcGxheS1TRlAtbW9kdWxlLWluZm9ybWF0aW9uLnBhdGNoIHwgMjk3ICsrKysr
KysKPiAgLi4uLzQwOC1zZnAtbW9yZS1jb3Rzd29ya3MtZml4ZXMucGF0Y2ggICAgICAgIHwgIDQ0
ICsKPiAgLi4uZGEzODgtY2xlYXJmb2ctZW1tYy1vbi1jbGVhcmZvZy1iYXNlLnBhdGNoIHwgIDg3
ICsrCj4gIC4uLnJtYWRhMzg4LWNsZWFyZm9nLWRvY3VtZW50LU1QUC11c2FnZS5wYXRjaCB8IDEy
NCArKysKPiAgLi4uL3BhdGNoZXMtNC4xOS80NTAtcmVwcm9iZV9zZnBfcGh5LnBhdGNoICAgIHwg
IDk0ICsrKwo+ICAuLi5sLWFybWFkYTM3eHgtQWRkLWVtbWMtc2Rpby1waW5jdHJsLWQucGF0Y2gg
fCAgNDAgKwo+ICAuLi5sLWFybWFkYS0zN3h4LUVuYWJsZS1lbW1jLW9uLWVzcHJlc3MucGF0Y2gg
fCAgNDkgKysKPiAgLi4udHMtbWFydmVsbC1hcm1hZGEzN3h4LUFkZC1ldGgwLWFsaWFzLnBhdGNo
IHwgIDIwICsKPiAgLi4uZGEtMzcyMC1lc3ByZXNzb2Jpbi1jb3JyZWN0LXNwaS1ub2RlLnBhdGNo
IHwgIDU4ICsrCj4gIC4uLmwtYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4tYWRkLXBvcnRzLS5wYXRj
aCB8ICAyNiArCj4gIC4uLnJkdmFyay1Db252ZXJ0LXRvLXVzZS1wY2lfaG9zdF9wcm9iZS5wYXRj
aCB8ICA0NCArCj4gIC4uLi1kZXZpY2UtdG8tdGhlLXNhbWUtTUFYLXBheWxvYWQtc2l6ZS5wYXRj
aCB8IDEzOCArKysrCj4gIC4uLmFyZHZhcmstZGlzYWJsZS1MT1Mtc3RhdGUtYnktZGVmYXVsdC5w
YXRjaCB8ICA1NSArKwo+ICAuLi5hcmstYWxsb3ctdG8tc3BlY2lmeS1saW5rLWNhcGFiaWxpdHku
cGF0Y2ggfCAgNDMgKwo+ICAuLi4tMzcyMC1lc3ByZXNzb2Jpbi1zZXQtbWF4LWxpbmstdG8tZ2Uu
cGF0Y2ggfCAgNzMgKysKPiAgNDUgZmlsZXMgY2hhbmdlZCwgMzk1OCBpbnNlcnRpb25zKCspCj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvbXZlYnUvY29uZmlnLTQuMTkKPiAgcmVu
YW1lIHRhcmdldC9saW51eC9tdmVidS9jb3J0ZXhhNTMve2NvbmZpZy1kZWZhdWx0ID0+IGNvbmZp
Zy00LjE0fSAoMTAwJSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9saW51eC9tdmVidS9j
b3J0ZXhhNTMvY29uZmlnLTQuMTkKPiAgcmVuYW1lIHRhcmdldC9saW51eC9tdmVidS9jb3J0ZXhh
NzIve2NvbmZpZy1kZWZhdWx0ID0+IGNvbmZpZy00LjE0fSAoMTAwJSkKPiAgY3JlYXRlIG1vZGUg
MTAwNjQ0IHRhcmdldC9saW51eC9tdmVidS9jb3J0ZXhhNzIvY29uZmlnLTQuMTkKPiAgY3JlYXRl
IG1vZGUgMTAwNjQ0IHRhcmdldC9saW51eC9tdmVidS9maWxlcy00LjE5L2FyY2gvYXJtL2Jvb3Qv
ZHRzL2FybWFkYS0zODUtbGlua3N5cy12ZW5vbS5kdHMKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHRh
cmdldC9saW51eC9tdmVidS9maWxlcy00LjE5L2FyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9h
cm1hZGEtMzcyMC1lc3ByZXNzb2Jpbi1lbW1jLmR0cwo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFy
Z2V0L2xpbnV4L212ZWJ1L2ZpbGVzLTQuMTkvYXJjaC9hcm02NC9ib290L2R0cy9tYXJ2ZWxsL2Fy
bWFkYS0zNzIwLWVzcHJlc3NvYmluLXY3LWVtbWMuZHRzCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0
YXJnZXQvbGludXgvbXZlYnUvZmlsZXMtNC4xOS9hcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwv
YXJtYWRhLTM3MjAtZXNwcmVzc29iaW4tdjcuZHRzCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJn
ZXQvbGludXgvbXZlYnUvcGF0Y2hlcy00LjE5LzAwMi1hZGRfcG93ZXJ0YWJsZXMucGF0Y2gKPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9saW51eC9tdmVidS9wYXRjaGVzLTQuMTkvMDAzLWFk
ZF9zd2l0Y2hfbm9kZXMucGF0Y2gKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9saW51eC9t
dmVidS9wYXRjaGVzLTQuMTkvMDA0LWFkZF9zYXRhX2Rpc2tfYWN0aXZpdHlfdHJpZ2dlci5wYXRj
aAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L3BhdGNoZXMtNC4xOS8w
MDUtbGlua3N5c19oYXJkY29kZV9uYW5kX2VjY19zZXR0aW5ncy5wYXRjaAo+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L3BhdGNoZXMtNC4xOS8wMDYtbXZlYnUtTWFuZ2xl
LWJvb3Rsb2FkZXItcy1rZXJuZWwtYXJndW1lbnRzLnBhdGNoCj4gIGNyZWF0ZSBtb2RlIDEwMDY0
NCB0YXJnZXQvbGludXgvbXZlYnUvcGF0Y2hlcy00LjE5LzEwMC1maW5kX2FjdGl2ZV9yb290LnBh
dGNoCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvbXZlYnUvcGF0Y2hlcy00LjE5
LzEwMi1yZXZlcnRfaTJjX2RlbGF5LnBhdGNoCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQv
bGludXgvbXZlYnUvcGF0Y2hlcy00LjE5LzIwNS1hcm1hZGEtMzg1LXJkLW10ZC1wYXJ0aXRpb25z
LnBhdGNoCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvbXZlYnUvcGF0Y2hlcy00
LjE5LzIwNi1BUk0tbXZlYnUtMzg1LWFwLUFkZC1wYXJ0aXRpb25zLnBhdGNoCj4gIGNyZWF0ZSBt
b2RlIDEwMDY0NCB0YXJnZXQvbGludXgvbXZlYnUvcGF0Y2hlcy00LjE5LzIxMC1jbGVhcmZvZ19z
d2l0Y2hfbm9kZS5wYXRjaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1
L3BhdGNoZXMtNC4xOS8yMjAtZGlzYWJsZS11bnRlc3RlZC1kc2EtYm9hcmRzLnBhdGNoCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvbXZlYnUvcGF0Y2hlcy00LjE5LzIzMC1hcm1h
ZGEteHAtbGlua3N5cy1tYW1iYS1icm9rZW4taWRsZS5wYXRjaAo+ICBjcmVhdGUgbW9kZSAxMDA2
NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L3BhdGNoZXMtNC4xOS8zMDAtbXZuZXRhLXR4LXF1ZXVlLXdv
cmthcm91bmQucGF0Y2gKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9saW51eC9tdmVidS9w
YXRjaGVzLTQuMTkvNDAwLWNwdWlkbGUtbXZlYnUtaW5kaWNhdGUtZmFpbHVyZS10by1lbnRlci1k
ZWVwZXItc2xlZXAucGF0Y2gKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9saW51eC9tdmVi
dS9wYXRjaGVzLTQuMTkvNDAxLXBjaS1tdmVidS10aW1lLW91dC1yZXNldC1vbi1saW5rLXVwLnBh
dGNoCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvbXZlYnUvcGF0Y2hlcy00LjE5
LzQwMi1uZXQtcGh5bGluay1vbmx5LWNhbGwtbWFjX2NvbmZpZy1kdXJpbmctcmVzb2x2ZS13aGVu
LnBhdGNoCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvbXZlYnUvcGF0Y2hlcy00
LjE5LzQwMy1uZXQtcGh5bGluay1lbnN1cmUtaW5iYW5kLUFOLXdvcmtzLWNvcnJlY3RseS5wYXRj
aAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L3BhdGNoZXMtNC4xOS80
MDQtc2ZwLXByb3ZpZGUtbmV0ZGV2LXNmcF9idXMtYW5kLXVzZS1mb3Itc3RhcnQtc3RvcC5wYXRj
aAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L3BhdGNoZXMtNC4xOS80
MDUtbmV0LXBoeS1tYXJ2ZWxsMTBnLWFkZC1TRlAtc3VwcG9ydC5wYXRjaAo+ICBjcmVhdGUgbW9k
ZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L3BhdGNoZXMtNC4xOS80MDYtc2ZwLWFkZC1zZnAt
Y29tcGF0aWJsZS5wYXRjaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1
L3BhdGNoZXMtNC4xOS80MDctc2ZwLWRpc3BsYXktU0ZQLW1vZHVsZS1pbmZvcm1hdGlvbi5wYXRj
aAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L3BhdGNoZXMtNC4xOS80
MDgtc2ZwLW1vcmUtY290c3dvcmtzLWZpeGVzLnBhdGNoCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0
YXJnZXQvbGludXgvbXZlYnUvcGF0Y2hlcy00LjE5LzQxMi1BUk0tZHRzLWFybWFkYTM4OC1jbGVh
cmZvZy1lbW1jLW9uLWNsZWFyZm9nLWJhc2UucGF0Y2gKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHRh
cmdldC9saW51eC9tdmVidS9wYXRjaGVzLTQuMTkvNDE1LUFSTS1kdHMtYXJtYWRhMzg4LWNsZWFy
Zm9nLWRvY3VtZW50LU1QUC11c2FnZS5wYXRjaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0
L2xpbnV4L212ZWJ1L3BhdGNoZXMtNC4xOS80NTAtcmVwcm9iZV9zZnBfcGh5LnBhdGNoCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvbXZlYnUvcGF0Y2hlcy00LjE5LzUxMy1hcm02
NC1kdHMtbWFydmVsbC1hcm1hZGEzN3h4LUFkZC1lbW1jLXNkaW8tcGluY3RybC1kLnBhdGNoCj4g
IGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvbXZlYnUvcGF0Y2hlcy00LjE5LzUxNC1h
cm02NC1kdHMtbWFydmVsbC1hcm1hZGEtMzd4eC1FbmFibGUtZW1tYy1vbi1lc3ByZXNzLnBhdGNo
Cj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvbXZlYnUvcGF0Y2hlcy00LjE5LzUy
MC1hcm02NC1kdHMtbWFydmVsbC1hcm1hZGEzN3h4LUFkZC1ldGgwLWFsaWFzLnBhdGNoCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCB0YXJnZXQvbGludXgvbXZlYnUvcGF0Y2hlcy00LjE5LzUyMS1hcm02
NC1kdHMtYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4tY29ycmVjdC1zcGktbm9kZS5wYXRjaAo+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L3BhdGNoZXMtNC4xOS81MjItYXJt
NjQtZHRzLW1hcnZlbGwtYXJtYWRhLTM3MjAtZXNwcmVzc29iaW4tYWRkLXBvcnRzLS5wYXRjaAo+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L3BhdGNoZXMtNC4xOS81MjMt
UmV2ZXJ0LVBDSS1hYXJkdmFyay1Db252ZXJ0LXRvLXVzZS1wY2lfaG9zdF9wcm9iZS5wYXRjaAo+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L3BhdGNoZXMtNC4xOS81MjQt
UENJLWFhcmR2YXJrLXNldC1ob3N0LWFuZC1kZXZpY2UtdG8tdGhlLXNhbWUtTUFYLXBheWxvYWQt
c2l6ZS5wYXRjaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L3BhdGNo
ZXMtNC4xOS81MjYtUENJLWFhcmR2YXJrLWRpc2FibGUtTE9TLXN0YXRlLWJ5LWRlZmF1bHQucGF0
Y2gKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHRhcmdldC9saW51eC9tdmVidS9wYXRjaGVzLTQuMTkv
NTI3LVBDSS1hYXJkdmFyay1hbGxvdy10by1zcGVjaWZ5LWxpbmstY2FwYWJpbGl0eS5wYXRjaAo+
ICBjcmVhdGUgbW9kZSAxMDA2NDQgdGFyZ2V0L2xpbnV4L212ZWJ1L3BhdGNoZXMtNC4xOS81Mjgt
YXJtNjQtZHRzLWFybWFkYS0zNzIwLWVzcHJlc3NvYmluLXNldC1tYXgtbGluay10by1nZS5wYXRj
aAoKU29ycnksIHRoaXMgd2FzIG1lYW50IHRvIGJlIHNlbnQgYXMgdjIgb2YgaHR0cHM6Ly9wYXRj
aHdvcmsub3psYWJzLm9yZy9wYXRjaC8xMTAwNzAwCnNob3VsZCBtZW50aW9uIHRoYXQsIHNpbmNl
IE1hcmVrIGlzIG9jY3VwaWVkIG5vdywgSSdtIHNlbmRpbmcgaXQgb24gaGlzIGJlaGFsZi4KCi0t
IApUTU4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9w
ZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcK
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
