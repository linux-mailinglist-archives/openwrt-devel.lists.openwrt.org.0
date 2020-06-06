Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 238031F0477
	for <lists+openwrt-devel@lfdr.de>; Sat,  6 Jun 2020 05:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uo/mB24DXjFJuCMylf5D7QTi82pb9mzGzOAnGZILajE=; b=BTzRZKYgdQjz1N
	+Cz4l3mWTcJ9ZNtIQf2So2pnzVfY9o/r9tL4n0aFSm3RBZvpAsIA+XCNuG2JfabBmJhCS8X203cql
	ARJCm8zeTd7ae/WG+1pDN5NZgyUXe4BNuHCZekU3wSwoYpgH+sydq+iXYaZD8NJMtwfuQBvS07+qB
	g1JAxlcriEc0N2I1hWuSphHbu0n7g8uMKQNcPmKM82kB4G1s4hQ7rloJscsXjpBuL6zt36nnagxT6
	misFd3Zlf/c1OLZQ8yXYulsb9KCgSQ2exBEgdCWetvP/aSq6nSvcKwckL+eVcfcFGHk0SDMnShY0w
	wMj8yiSPeHMYC/gqgGUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhPl5-0004iK-7S; Sat, 06 Jun 2020 03:44:35 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhPky-0004hs-Ot
 for openwrt-devel@lists.openwrt.org; Sat, 06 Jun 2020 03:44:30 +0000
Received: from [127.0.0.1] (oi.rfid.io [198.211.125.99])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E7A7E18462;
 Sat,  6 Jun 2020 05:44:23 +0200 (CEST)
Date: Sat, 6 Jun 2020 03:44:22 +0000 (UTC)
From: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
To: Alexander Couzens <lynxis@fe80.eu>
Message-ID: <651eb4db-ddb9-44ae-b3df-a181860a7a68@true.cz>
In-Reply-To: <20200606014055.2408269-1-lynxis@fe80.eu>
References: <318bb824-116a-4307-814d-78acfc55c55f@localhost>
 <20200606014055.2408269-1-lynxis@fe80.eu>
MIME-Version: 1.0
X-Correlation-ID: <651eb4db-ddb9-44ae-b3df-a181860a7a68@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_204428_960052_B7310EC9 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] musl: use official release tar
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Alexander Couzens <lynxis@fe80.eu>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SnVuIDYsIDIwMjAgMDM6NDE6MzAgQWxleGFuZGVyIENvdXplbnMgPGx5bnhpc0BmZTgwLmV1PjoK
CkhpLAoKPiBUbyBwcmV2ZW50ICJ3cm9uZyIgbXVzbCBwYWNrYWdlcyB3aGljaCBoYXZlIGEgbmV3
IHZlcnNpb24gbnVtYmVyCj4gYnV0IHRoZSBwYWNrYWdlIHN0aWxsIGNvbnRhaW5zIGFuIG9sZCB2
ZXJzaW9uLCBiZWNhdXNlCj4gUEtHX1NPVVJDRV9WRVJTSU9OIHdhcyB1bmNoYW5nZWQuCj4KPiBS
ZWY6IG11c2wgbWwgaHR0cHM6Ly93d3cub3BlbndhbGwuY29tL2xpc3RzL211c2wvMjAyMC8wNS8y
Mi80Cj4KPiBTaWduZWQtb2ZmLWJ5OiBBbGV4YW5kZXIgQ291emVucyA8bHlueGlzQGZlODAuZXU+
Cj4gLS0tCj4gdG9vbGNoYWluL211c2wvY29tbW9uLm1rIHwgOSArKystLS0tLS0KPiAxIGZpbGUg
Y2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L3Rvb2xjaGFpbi9tdXNsL2NvbW1vbi5tayBiL3Rvb2xjaGFpbi9tdXNsL2NvbW1vbi5tawo+IGlu
ZGV4IGUxMzU0ZjI2MzUxMC4uNmE1OTU3NzEwODZkIDEwMDY0NAo+IC0tLSBhL3Rvb2xjaGFpbi9t
dXNsL2NvbW1vbi5tawo+ICsrKyBiL3Rvb2xjaGFpbi9tdXNsL2NvbW1vbi5tawo+IEBAIC0xMSwx
MiArMTEsOSBAQCBQS0dfTkFNRTo9bXVzbAo+IFBLR19WRVJTSU9OOj0xLjEuMjQKPiBQS0dfUkVM
RUFTRTo9MQo+Cj4gLVBLR19TT1VSQ0VfUFJPVE86PWdpdAo+IC1QS0dfU09VUkNFX1NVQkRJUjo9
JChQS0dfTkFNRSktJChQS0dfVkVSU0lPTikKPiAtUEtHX1NPVVJDRV9WRVJTSU9OOj1lYTk1MjVj
OGJjZjYxNzBkZjU5MzY0YzRiY2Q2MTZkZTFhY2Y4NzAzCj4gLVBLR19NSVJST1JfSEFTSDo9Njk3
NWM0NWI5YmZlNTg2YWMwMGRiZmNkMWIxYTEzYWIxMTBhZjA1MjgwMjhhYjNkZWUwM2UyM2UyYzA3
NjNlNQo+IC1QS0dfU09VUkNFX1VSTDo9aHR0cHM6Ly9naXQubXVzbC1saWJjLm9yZy9naXQvbXVz
bAo+IC1QS0dfU09VUkNFOj0kKFBLR19OQU1FKS0kKFBLR19WRVJTSU9OKS0kKFBLR19TT1VSQ0Vf
VkVSU0lPTikudGFyLnh6Cj4gK1BLR19TT1VSQ0U6PSQoUEtHX05BTUUpLSQoUEtHX1ZFUlNJT04p
LnRhci5nego+ICtQS0dfU09VUkNFX1VSTDo9aHR0cHM6Ly9tdXNsLmxpYmMub3JnL3JlbGVhc2Vz
Lwo+ICtQS0dfSEFTSDo9MTM3MGM5YTgxMmIyY2YyYTdkOTI4MDI1MTBjY2EwMDU4Y2MzN2U2NmE3
YmVkZDcwMDUxZjBhMzQwMTUwMjJhMwo+Cj4gTElCQ19TT19WRVJTSU9OOj0kKFBLR19WRVJTSU9O
KQo+IFBBVENIX0RJUjo9JChQQVRIX1BSRUZJWCkvcGF0Y2hlcwo+CgpSZXZpZXdlZC1ieTogUGV0
ciDFoHRldGlhciA8eW5lenpAdHJ1ZS5jej4KClRoYW5rcyEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpvcGVud3J0LWRldmVsIG1haWxpbmcgbGlzdApv
cGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCmh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcv
bWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCg==
