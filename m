Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8E61818D5
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 13:54:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=52j3fzSo6wXzw935/Dua6mI1t+JuI+uqjhUabQmpUyI=; b=klNQitJ3tK5OGl
	ZThYlrPq5IcEA2ba/nvpEOW7YnyTlYSTlh4aW7vMzyDnNCUsl0fhAz3/Wa5Ert7zXrEypF4W2SDXz
	NmQl+lJqejtNKbHq6RqwY0zCpriDTpJhzXCcS0u/CtKkAXkmvXzTZPWFml/UWaCBhtxl62xQOueBR
	bYodSf5nPGYoWk8p7inwDyTOm2xaq7fTFs7Zp0pbQI+x6fbKxmlYX+nFsoM2YPe/c3HC30udZ4q8S
	yDNXibkZWaOSIA9btgoaeZC1L9xh9zB/tbRYLGbQ4QZSiMMjfr5e43AnveATkoIDRBLHCRCdmdQ19
	VA0FBJNyvlX8al/m+2IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC0sQ-00064L-JL; Wed, 11 Mar 2020 12:54:22 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC0sJ-00063g-UN
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 12:54:18 +0000
Received: from btcskp ([132.180.49.42]) by mrelayeu.kundenserver.de (mreue107
 [212.227.15.183]) with ESMTPSA (Nemesis) id 1Mqrjz-1jgxtz3w3d-00mrtK; Wed, 11
 Mar 2020 13:54:03 +0100
From: "Adrian Schmutzler" <mail@adrianschmutzler.de>
To: =?utf-8?Q?'Petr_=C5=A0tetiar'?= <ynezz@true.cz>,
 <openwrt-devel@lists.openwrt.org>
References: <20200311112558.21961-1-ynezz@true.cz>
In-Reply-To: <20200311112558.21961-1-ynezz@true.cz>
Date: Wed, 11 Mar 2020 13:54:02 +0100
Message-ID: <009801d5f7a4$2417e2a0$6c47a7e0$@adrianschmutzler.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Content-Language: de
Thread-Index: AQEyAqoFEeBI7lHCK0rbhctgeokMlKmLQrlg
X-Provags-ID: V03:K1:T62aJWv3s/LANaY2+6ozJu3sggfuGwlZFFrB6gQ+h3/cNRTA56m
 0sv6UxL7QWjY87cIAko3W7SPE+jSGtbjKoU2sVO6VgNghuKdWBi15JiCUGeIYPJ/oapYsEE
 cXYYUHh165V1gmCRL3gCyrEmdXU7VZ7hUu7LgrZxk4O6TJrINnCUIscwUpHWt8OIZrgLn0V
 SgPBKw+qk/A8ST88zlegg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:8v5pKZrrbLY=:2gXO+R0ny8Eb/O87S9fyEQ
 GHBMTvN3ahF4d3qDU6pt8Z/DtY+iL1lp71DknKlc+dwQMkw90SckIwF59tY+u3oPXgg4jYJGO
 RR2aqdLozoa5Wsa+gfqZeSV5Tx352a6b0cOtECIuGuhb4+/VIC/c5HSeunsD+oX64CUlqaRr1
 Yq4+X7sCOSPqLBt7QwhLxUl9oC0a0Zx8wnh1gIqjGrFxg/lde8azq6SO5/fwmaHAGJRx8zinO
 wTr1smEyKyjm0UcSyW/hO5WRLRaSOpOGVE2Ag6qiW+IEPqwHzR4wiAon4CuvIGsHsmqs/Nko0
 zShSCwNjHNaaJD/aNqdZgUEg6ZeAxe7PApS6rxR5ycfxDsor5mzOyjWgERk08Q/rpj0p86ghN
 ipuD0Y65WjzhFP6WFnwAraArLCFzcXLNC7gmAmLG+PCJGxgtSzUPDC3hdYzsvTmuQ07wR+V2F
 bf9Rwun8cyNoL4ig37nd+v27GukvEPVSnBQlbiKft7POnp3W+hd69xFzqDHqIrt2V7fRcl3aX
 6HxyZn/UqejbnOAk/d6qe6wZEJYb/Trd9kqa2g3HCUzUe6z+NvXemN/GkHAfHU6Hv4+kRRRu+
 EqjXa2h59MyjIxGQfEXn4h3cCVjDXRQKsSU+NnjzjlJV52y81a7U1h58zFu/GGQrWS8pawVyz
 JBfA37dcHlYkVLFMoRIIoP66IrLso6ntWrBfMEUDsF9SX963sPuyqur+CCHd6x4hqRkAAZ1Em
 BjSmqcB9FKcW/fM8p2hMfr9h1/eZffznpnr5Izr0yziurEGezxcN8OoWZMPmr8k4O1E8s9FEL
 1hGzlqAWB1zRmF3nfvawYM67+iL0FV5u4BI/3SpJjkLHU8pOTGimVEzdfspoXQCPaqLGFi0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_055416_279090_4F5147C0 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH] imx6: switch to 5.4 kernel
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
Cc: 'Tim Harvey' <tharvey@gateworks.com>,
 'Koen Vandeputte' <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SGksCgo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gRnJvbTogb3BlbndydC1kZXZlbCBb
bWFpbHRvOm9wZW53cnQtZGV2ZWwtYm91bmNlc0BsaXN0cy5vcGVud3J0Lm9yZ10gT24KPiBCZWhh
bGYgT2YgUGV0ciDFoHRldGlhcgo+IFNlbnQ6IE1pdHR3b2NoLCAxMS4gTcOkcnogMjAyMCAxMjoy
Ngo+IFRvOiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4gQ2M6IFBldHIgxaB0ZXRp
YXIgPHluZXp6QHRydWUuY3o+OyBUaW0gSGFydmV5IDx0aGFydmV5QGdhdGV3b3Jrcy5jb20+OyBL
b2VuCj4gVmFuZGVwdXR0ZSA8a29lbi52YW5kZXB1dHRlQG5jZW50cmljLmNvbT4KPiBTdWJqZWN0
OiBbT3BlbldydC1EZXZlbF0gW1BBVENIXSBpbXg2OiBzd2l0Y2ggdG8gNS40IGtlcm5lbAo+IAo+
IFNlZW1zIHRvIGJlIHdvcmtpbmcgZmluZSwgaXQncyA5OS45JSB1cHN0cmVhbSBzdHVmZiBhbnl3
YXkuIExldHMgc3RhcnQKPiB3aWRlciB1c2VyYmFzZSB0ZXN0aW5nLgo+IAo+IENjOiBUaW0gSGFy
dmV5IDx0aGFydmV5QGdhdGV3b3Jrcy5jb20+Cj4gQ2M6IEtvZW4gVmFuZGVwdXR0ZSA8a29lbi52
YW5kZXB1dHRlQG5jZW50cmljLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBQZXRyIMWgdGV0aWFyIDx5
bmV6ekB0cnVlLmN6Pgo+IC0tLQo+ICB0YXJnZXQvbGludXgvaW14Ni9NYWtlZmlsZSB8IDIgKy0K
PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL3RhcmdldC9saW51eC9pbXg2L01ha2VmaWxlIGIvdGFyZ2V0L2xpbnV4L2lteDYv
TWFrZWZpbGUKPiBpbmRleCA4YzA3NzBkMDQxOTAuLjA2OGQ3ZWY1YTRmNyAxMDA2NDQKPiAtLS0g
YS90YXJnZXQvbGludXgvaW14Ni9NYWtlZmlsZQo+ICsrKyBiL3RhcmdldC9saW51eC9pbXg2L01h
a2VmaWxlCj4gQEAgLTE0LDcgKzE0LDcgQEAgQ1BVX1RZUEU6PWNvcnRleC1hOQo+ICBDUFVfU1VC
VFlQRTo9bmVvbgo+ICBNQUlOVEFJTkVSOj1MdWthIFBlcmtvdiA8bHVrYUBvcGVud3J0Lm9yZz4K
PiAKPiAtS0VSTkVMX1BBVENIVkVSOj00LjE5Cj4gK0tFUk5FTF9QQVRDSFZFUjo9NS40Cj4gIEtF
Uk5FTF9URVNUSU5HX1BBVENIVkVSOj01LjQKCkRpZCB5b3Uga2VlcCBURVNUSU5HX1BBVENIVkVS
IGJ5IGludGVudGlvbiAoSSBkbyBub3QgdGhpbmsgdGhlcmUgaXMgYSBydWxlIGZvciBpdD8pPwoK
QmVzdAoKQWRyaWFuCgo+IAo+ICBpbmNsdWRlICQoSU5DTFVERV9ESVIpL3RhcmdldC5tawo+IAo+
IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4g
aHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdApvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBz
Oi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
