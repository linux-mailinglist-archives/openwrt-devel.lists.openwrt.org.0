Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCFC1CFC41
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 May 2020 19:34:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ACsbs/CkJDs7cQN40Tf8IxkVAtWKAIiCScJzcOAKig=; b=QVorTNFFcmln0/
	2uftu+d36rmX2jkqVNNg5KqlrsYYeNmsEKUKszz8Gh4t2TYxbjLhXvHY3LOwngzZJHH92rgBPMKgN
	F2cI6R5FLSVLRu0i/d9u9sfOBYQoR8AOf1xjoFCXeWaIYBeQjDq7coc0eXNDV/aRvoyt4dMGE7mjY
	wX2LxWf0zwq8c3De3YoiiHmq4kc0hSmw94ZEPIhipyi3YbZa83C1Bwd7crMt+fzoOGekeLEcHoe7G
	z7F90FHw0ocMhnM5DKocVengendTl+vKoDYO0dZkY8L1byAQx+UBf9eFkodVbT0FsMO818gz8BeIA
	MCkWKrjU8FHaWJYLz+lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYYn6-0004gP-8S; Tue, 12 May 2020 17:34:04 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYYmw-0004fP-M5
 for openwrt-devel@lists.openwrt.org; Tue, 12 May 2020 17:33:59 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 04CHXqni030807
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 12 May 2020 11:33:52 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <alpine.LNX.2.22.419.2005121544390.322033@mStation.localdomain>
Date: Tue, 12 May 2020 11:33:52 -0600
Message-Id: <38105CE5-546F-49A2-AADC-7857486A629B@redfish-solutions.com>
References: <20200512100520.3150-1-foss@volatilesystems.org>
 <RGY7AQ.6L62V3KCGE1C@volatilesystems.org>
 <alpine.LNX.2.22.419.2005121544390.322033@mStation.localdomain>
To: Enrico Mioso <mrkiko.rs@gmail.com>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_103357_241239_E40D08C9 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] mt7621: add kmod-mt7603 to DIR-860L B1
 DEVICE_PACKAGES
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
Cc: openwrt-devel@lists.openwrt.org, Stijn Segers <foss@volatilesystems.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VGhhdOKAmXMgcHJlc3VtYWJseSB3aGF0IHRoZSBrbW9kLW10NzZ4MiBpcyBmb3LigKYKCgo+IE9u
IE1heSAxMiwgMjAyMCwgYXQgNzo0NCBBTSwgRW5yaWNvIE1pb3NvIDxtcmtpa28ucnNAZ21haWwu
Y29tPiB3cm90ZToKPiAKPiBPdXQgb2YgY3VyaW9zaXR5LCBpcyBNVDc2MDIgc3VwcG9ydGVkPwo+
IAo+IHRoYW5rcyEhCj4gRW5yaWNvCj4gCj4gCj4gT24gVHVlLCAxMiBNYXkgMjAyMCwgU3Rpam4g
U2VnZXJzIHdyb3RlOgo+IAo+PiBEYXRlOiBUdWUsIDEyIE1heSAyMDIwIDE0OjUzOjE1Cj4+IEZy
b206IFN0aWpuIFNlZ2VycyA8Zm9zc0B2b2xhdGlsZXN5c3RlbXMub3JnPgo+PiBUbzogb3Blbndy
dC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+PiBTdWJqZWN0OiBSZTogW09wZW5XcnQtRGV2ZWxd
IFtQQVRDSF0gbXQ3NjIxOiBhZGQga21vZC1tdDc2MDMgdG8gRElSLTg2MEwgQjEKPj4gICAgREVW
SUNFX1BBQ0tBR0VTCj4+IAo+PiAKPj4gT3AgZGluc2RhZyAxMiBtZWkgMjAyMCBvbSAxMnUwNSBz
Y2hyZWVmIFN0aWpuIFNlZ2VycyA8Zm9zc0B2b2xhdGlsZXN5c3RlbXMub3JnPjoKPj4+IFRoZSBE
SVItODYwTCBCMSBoYXMgYW4gTVQ3NjAzIHJhZGlvIGJ1dCB3YXMgbWlzc2luZyB0aGUgY29ycmVz
cG9uZGluZyBrbW9kLW10NzYwMyBtb2R1bGUgaW4gREVWSUNFX1BBQ0tBR0VTLgo+Pj4gQWRkIHRo
aXMgc28gaXQgZ2V0cyBpbmNsdWRlZCBieSBkZWZhdWx0LCBldmVuIHdoZW4gdGhlIGttb2QgZ2V0
cyBzZXQgdG8gW21dLgo+PiAKPj4gTmV2ZXJtaW5kIG1lLi4uIFRoaXMgZGV2aWNlIGhhcyBhbiBN
VDc2MDIgcmFkaW8sIG5vdCBNVDc2MDMuLi4KPj4gCj4+IFN0aWpuCj4+IAo+Pj4gU2lnbmVkLW9m
Zi1ieTogU3Rpam4gU2VnZXJzIDxmb3NzQHZvbGF0aWxlc3lzdGVtcy5vcmc+Cj4+PiAtLS0KPj4+
IHRhcmdldC9saW51eC9yYW1pcHMvaW1hZ2UvbXQ3NjIxLm1rIHwgMiArLQo+Pj4gMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+PiBkaWZmIC0tZ2l0IGEvdGFy
Z2V0L2xpbnV4L3JhbWlwcy9pbWFnZS9tdDc2MjEubWsgYi90YXJnZXQvbGludXgvcmFtaXBzL2lt
YWdlL210NzYyMS5tawo+Pj4gaW5kZXggMDgyYmIzMWI3OS4uZjE2YmYyYTViZCAxMDA2NDQKPj4+
IC0tLSBhL3RhcmdldC9saW51eC9yYW1pcHMvaW1hZ2UvbXQ3NjIxLm1rCj4+PiArKysgYi90YXJn
ZXQvbGludXgvcmFtaXBzL2ltYWdlL210NzYyMS5tawo+Pj4gQEAgLTIyNyw3ICsyMjcsNyBAQCBk
ZWZpbmUgRGV2aWNlL2RsaW5rX2Rpci04NjBsLWIxCj4+PiAgIERFVklDRV9WRU5ET1IgOj0gRC1M
aW5rCj4+PiAgIERFVklDRV9NT0RFTCA6PSBESVItODYwTAo+Pj4gICBERVZJQ0VfVkFSSUFOVCA6
PSBCMQo+Pj4gLSAgREVWSUNFX1BBQ0tBR0VTIDo9IGttb2QtbXQ3NngyIGttb2QtdXNiMyBrbW9k
LXVzYi1sZWR0cmlnLXVzYnBvcnQgd3BhZC1iYXNpYwo+Pj4gKyAgREVWSUNFX1BBQ0tBR0VTIDo9
IGttb2QtbXQ3NjAzIGttb2QtbXQ3NngyIGttb2QtdXNiMyBrbW9kLXVzYi1sZWR0cmlnLXVzYnBv
cnQgd3BhZC1iYXNpYwo+Pj4gICBTVVBQT1JURURfREVWSUNFUyArPSBkaXItODYwbC1iMQo+Pj4g
ZW5kZWYKPj4+IFRBUkdFVF9ERVZJQ0VTICs9IGRsaW5rX2Rpci04NjBsLWIxCj4+PiAtLQo+Pj4g
Mi4yMC4xCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+Pj4gb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPj4+IG9wZW53cnQtZGV2ZWxAbGlzdHMu
b3BlbndydC5vcmcKPj4+IGh0dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5m
by9vcGVud3J0LWRldmVsCj4+IAo+PiAKPj4gCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCj4+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4+IG9w
ZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPj4gCj4gCj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0LWRldmVsIG1haWxpbmcg
bGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBs
aXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
