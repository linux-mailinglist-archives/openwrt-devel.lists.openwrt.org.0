Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C8B1C2968
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 May 2020 04:41:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWYcPgMqsMednAKr/SQXx4HmWZb8plxtHAW6ny366qU=; b=mAIDIgnynKWj1f
	xCOgNYrDuPW/f9u5VCzc5F8SMCHg8efBw0hzTrL4viIcDb+JGQ/ZAsjRGwjSnMjtY+HtWd2mpuKOr
	u3C/LBrJdiFQsssZlxrPIlj7T2SSyHHtI1ew0W718/dGz/v+otf9FL+UlsA5zKEOVYEZ9DyMkLPC2
	OFhoSq0DcBo26jSI7XELTIbjUt1ERssHZPQyhYXCCV5V8tPpYdO/H8ydIOPpLaKSedVvUTGgcZOjb
	b6Jd35Gppz1xDoMSsgdjfpDI9Z6plA3n9QdNmDPC66lVqNI78FukVTLWu/gZYrOD2OQxHVq/XDpCu
	CV38fMiCLtHi2e50B0UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jV4Yd-0005Gw-R6; Sun, 03 May 2020 02:40:43 +0000
Received: from mail.redfish-solutions.com ([45.33.216.244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jV4YW-0005F5-1T
 for openwrt-devel@lists.openwrt.org; Sun, 03 May 2020 02:40:39 +0000
Received: from macbook2.redfish-solutions.com (macbook2.redfish-solutions.com
 [192.168.1.39]) (authenticated bits=0)
 by mail.redfish-solutions.com (8.15.2/8.15.2) with ESMTPSA id 0432eT4N028174
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 2 May 2020 20:40:30 -0600
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.80.23.2.2\))
From: Philip Prindeville <philipp_subx@redfish-solutions.com>
In-Reply-To: <CA+BfgNL=BgMipVmv6_xcaqH=F7ro0k-AURsU=CWe2R+3b4qH5Q@mail.gmail.com>
Date: Sat, 2 May 2020 20:40:29 -0600
Message-Id: <BC52B358-08DB-41F9-9B03-6DD5B53EBA1C@redfish-solutions.com>
References: <C69F94A6-C2A8-4836-B01F-C184013F9B30@redfish-solutions.com>
 <001301d620dc$1f0ba880$5d22f980$@adrianschmutzler.de>
 <875E4890-4ABC-4AFA-A7B3-F47642BA6AF0@gmx.us>
 <6A13D3D4-7E4A-4730-A817-DC3FEFF4D5D0@redfish-solutions.com>
 <CA+BfgNL=BgMipVmv6_xcaqH=F7ro0k-AURsU=CWe2R+3b4qH5Q@mail.gmail.com>
To: Dustin Howett <dustin@howett.net>
X-Mailer: Apple Mail (2.3608.80.23.2.2)
X-Scanned-By: MIMEDefang 2.84 on 192.168.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200502_194036_249169_7E194A4C 
X-CRM114-Status: GOOD (  24.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] Proposal: Differentiating "skinny" platforms
 from others... (resending)
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

SeKAmW0gbm90IGNvbnZpbmNlZCB0aGF0IHdvdWxkIGJlIG5lY2Vzc2FyeSwgb3IgdGhhdCB0aGlz
IHByb3Bvc2FsIHdvdWxkIGNyZWF0ZSBhbnkgbmV3IGNpcmN1bXN0YW5jZXMuCgpBbiBleGFtcGxl
IGlzIHRoYXQgY2VydGFpbiBhcmNoaXRlY3R1cmVzIGFyZSBzdXBwb3J0ZWQgYnkgTVVTTCBhbmQg
b3RoZXJzIGJ5IHVDbGliYywgb3IgZWdsaWJjLCBldGMuICBUaGF0IGluIHR1cm4gbWVhbnMgdGhh
dCBzb21lIGZ1bmN0aW9uYWxpdHkgaXMgYXZhaWxhYmxlIGFuZCBvdGhlcnMgbm90LCBiZWNhdXNl
IG5vdCBhbGwgcGFja2FnZXMgY29tcGlsZSBhZ2FpbnN0IGFsbCBhcmNoaXRlY3R1cmVzIGFuZCBy
dW50aW1lcywgZXRjLgoKVGhlIHNjaGlzbSBvZiDigJxmYXTigJ0gdnMuIOKAnHNraW5ueeKAnSBk
ZXZpY2UgaW4gc29tZSBjYXNlcyBtaWdodCBiZSBhbiBhcmNoaXRlY3R1cmFsIGlzc3VlLCBhcyBz
b21lIHByb2Nlc3NvcnMgb3IgU29DcyBkb27igJl0IGhhdmUgdGhlIHBoeXNpY2FsIGFiaWxpdHkg
dG8gYWRkcmVzcyBtb3JlIHRoYW4gTiBtZWdhYnl0ZXMgb2YgbWVtb3J5LCBzbyB0aGV5IGFyZSBh
cmNoaXRlY3R1cmFsbHkgY29uc3RyYWluZWQuICBJdOKAmXMgY29tbW9uIGZvciAzMi1iaXQgcHJv
Y2Vzc29ycyB0byBoYXZlIHVuZGVyIDRHQiBvZiBtZW1vcnkgYW5kIGluIHNvbWUgY2FzZXMgc3Vi
c3RhbnRpYWxseSBsZXNzIHRoYW4gNEdCLgoKTGlrZXdpc2UgQVJNNjQgYW5kIHg4Nl82NCBwcm9j
ZXNzb3JzIGNhbiBhbG1vc3QgZ3VhcmFudGVlIHBsYXRmb3JtcyBoYXZpbmcgYXQgbGVhc3QgMUdC
IGFuZCB1c3VhbGx5IG1vcmUuCgpTbyB3ZSB3b3VsZG7igJl0IG5lZWQgdG8gY2xlYXZlIHRoaW5n
cyBvbiBhIOKAnGRldmljZeKAnSBiYXNpcywgYnV0IG9uIGEg4oCccHJvY2Vzc29yIGZhbWlseeKA
nSAoaS5lLiBhcmNoaXRlY3R1cmUpIGJhc2lzLgoKCgo+IE9uIE1heSAyLCAyMDIwLCBhdCA3OjA1
IFBNLCBEdXN0aW4gSG93ZXR0IDxkdXN0aW5AaG93ZXR0Lm5ldD4gd3JvdGU6Cj4gCj4gSSdtIGNv
bmNlcm5lZCBhYm91dCBpbnRyb2R1Y2luZyBhIGdsb2JhbCBjb25maWd1cmF0aW9uIHN5bWJvbCB0
aGF0Cj4gY2hhbmdlcyB0aGUgYmVoYXZpb3Igb2YgYW55IGluZGl2aWR1YWwgcGFja2FnZS0tcmln
aHQgbm93LCBsYXJnZS0gYW5kCj4gc21hbGwtZm9ybWF0IGRldmljZXMgc2hhcmUgdGhlIHNhbWUg
cGFja2FnZSBmZWVkcywgYW5kIHRoZXJlJ3Mgbm8KPiBwcm92aXNpb24gaW4gb3BrZyBmb3IgcGFj
a2FnZSB2YXJpYW50IGZsYWdzLgo+IAo+IFRoaXMgc3VnZ2VzdHMgdGhhdCB3ZSdkIG5lZWQgdG8g
aG9zdCBhIGZlZWQgZm9yIHNraW5ueSBidWlsZHMgYW5kIGEKPiBmZWVkIGZvciBjaG9ua3kgYnVp
bGRzLCB3aGljaCB3b3VsZCByZWFsbHkgaW5jcmVhc2Ugc3RvcmFnZSwgaG9zdGluZwo+IGFuZCBi
dWlsZGJvdCBkZW1hbmQuCj4gCj4gT24gU2F0LCBNYXkgMiwgMjAyMCBhdCA1OjI5IFBNIFBoaWxp
cCBQcmluZGV2aWxsZQo+IDxwaGlsaXBwX3N1YnhAcmVkZmlzaC1zb2x1dGlvbnMuY29tPiB3cm90
ZToKPj4gCj4+IFdoZXJldmVyIHdlIGNhbiBmaW5kIGNvbW1vbiBncm91bmQsIEnigJltIHdpbGxp
bmcgdG8gZ28uCj4+IAo+PiBJ4oCZdmUgd29ya2VkIG9uIHZhcmlvdXMgcHJvamVjdHMgdGhhdCB1
c2VkIE9wZW5XUlQgaW4gc29tZSBhdHlwaWNhbCBzY2VuYXJpb3MgKHBvc2l0aW9uaW5nIHJhZGlv
cywgdHJhZmZpYyBzaGFwZXJzLCBob21lIHNlY3VyaXR5IGh1YnMsIGV0YykuICBJIHRoaW5rIGl0
IGdldHMgdXNlZCBmb3IgYSBicm9hZGVyIGJhc2Ugb2YgZGV2ZWxvcG1lbnQgdGhhbiBtb3N0IHBl
b3BsZSByZWFsaXplLiAgVGhlcmXigJlzIGEgTE9UIGRvd25zdHJlYW0gb2YgaXQuCj4+IAo+PiAt
UGhpbGlwCj4+IAo+PiAKPj4+IE9uIE1heSAyLCAyMDIwLCBhdCA1OjUxIFBNLCBMdWNhcyBSYW1h
Z2UgPG94cjQ2M0BnbXgudXM+IHdyb3RlOgo+Pj4gCj4+PiBJIGxpa2UgdGhhdCBldmVuIGJldHRl
ci4KPj4+IAo+Pj4gT3BlbldydCBoYXMgdHJhZGl0aW9uYWxseSBmb2N1c2VkIG9uIGVtYmVkZGVk
IHN5c3RlbXMgc3VjaCBhcyByb3V0ZXJzIGFuZCB0aGUgbGlrZS4gU28gdGhlc2Ugc2hvdWxkIGJl
IHRoZSBkZWZhdWx0IGFzIHlvdSBzYXkuCj4+PiAKPj4+IFRoZW4gaWYgSSB3YW50IHRvIHJ1biBP
cGVuV3J0IG9uIGEgbGFyZ2VyIG1hY2hpbmUsIEkgY2FuIGFkZCB0aGUgZmF0IHNvIHRvIHNwZWFr
Lgo+Pj4gCj4+PiBPbiBNYXkgMiwgMjAyMCAxMTo0ODowMyBQTSBVVEMsIG1haWxAYWRyaWFuc2No
bXV0emxlci5kZSB3cm90ZToKPj4+PiBIaSwKPj4+PiAKPj4+PiBqdXN0IGEgc2luZ2xlIHRob3Vn
aHQgb24gdGhpczoKPj4+PiAKPj4+PiBGb3IgbWUsIHRoaXMgcXVpY2tseSByYWlzZWQgdGhlIHF1
ZXN0aW9uOiBXaGF0J3Mgbm9ybWFsIGFuZCB3aGF0J3MKPj4+PiBleGNlcHRpb25hbD8KPj4+PiAK
Pj4+PiBZb3VyIHByb3Bvc2FsIGFzc3VtZXMgdGhhdCAiaHVnZSIgZGV2aWNlcyBhcmUgbm9ybWFs
IChkZWZhdWx0KSwgYW5kCj4+Pj4gc2tpbm55IGRldmljZXMgYXJlIHRoZSBleGNlcHRpb24gd2hp
Y2ggaGFzIHRvIGJlICJtYXJrZWQiLgo+Pj4+IAo+Pj4+IFdoeSBub3QgdGhlIG90aGVyIHdheSBh
cm91bmQ/IEZvciBzdGFuZGFyZCwganVzdCBrZWVwIHRoZSBiYXNpYyBzdHVmZiwKPj4+PiBhbmQg
dGhlbiBtYXJrIHNvbWUgdGFyZ2V0cy9kZXZpY2VzIHRoYXQgaGF2ZSB0aGUgY2FwYWJpbGl0eSB0
byBjYXJyeSBvbgo+Pj4+IGV4dHJhIHdvcmsvZHV0aWVzLi4uCj4+Pj4gCj4+Pj4gV2hpbGUgSSBp
bnRlbnRpb25hbGx5IHJhaXNlIHRoaXMgcXVlc3Rpb24gZm9yIGEgX2dlbmVyYWxfIGRpc2N1c3Np
b24sCj4+Pj4gaW4gcHJhY3RpY2UgIm15IHByb3Bvc2FsIiBhY3R1YWxseSB3b3VsZCBoYXZlIHNv
bWUgYmVuZWZpdHM6Cj4+Pj4gLSBXaGlsZSB5b3VyIHByb3Bvc2FsIHdvdWxkIG1hcmsgYWxsIHRp
bnkgZGV2aWNlcy90YXJnZXRzLCBJIHdvdWxkIGp1c3QKPj4+PiBtYXJrIHRoZSAiZXhjZXNzaXZl
IiBkZXZpY2VzLiBTbywgd2l0aCAibXkiIHNvbHV0aW9uIHRoZXJlIGlzIG5vIGNoYW5jZQo+Pj4+
IGEgdGlueSBkZXZpY2UgaXMgb3Zlcmxvb2tlZCBhbmQgYnJva2VuIGJ5IHNvbWUgcGFja2FnZSBh
ZGRpbmcgYSBsb3Qgb2YKPj4+PiBzdHVmZiB0byB0aGUgdXBncmFkZS4gSWYgb24gdGhlIG90aGVy
IGhhbmQgYW4gImV4Y2Vzc2l2ZSIgZGV2aWNlIGlzCj4+Pj4gb3Zlcmxvb2tlZCwgbm8gZGFtYWdl
IHdvdWxkIGJlIGRvbmUuCj4+Pj4gLSBTaW5jZSB0aGlzIGlzIGFib3V0ICJleHRyYSBmZWF0dXJl
cyIsIGFuZCB5b3Ugc2VlbSB0byB0aGluayBhYm91dAo+Pj4+IGRpZmZlcmVudCBjYXRlZ29yaWVz
LCBpdCBtYWtlcyBtb3JlIHNlbnNlIGFuZCB3b3VsZCBiZSBlYXNpZXIgdG8KPj4+PiAoc3BlY2lm
aWNhbGx5KSBtYXJrIHRoZSBkZXZpY2VzIHRoYXQgd291bGQgZ2V0IHRob3NlIGV4dHJhIGZlYXR1
cmVzLAo+Pj4+IGluc3RlYWQgb2YgbWFya2luZyBhIHdob2xlIGxvdCBvZiBvdGhlciBkZXZpY2Vz
IG5vdCBnZXR0aW5nIHRoZW0uCj4+Pj4gLSBZb3VyIHdob2xlIGlkZWEgZm9yIG1lIHNvdW5kcyBs
aWtlIGl0J3MgYWJvdXQgIm5pY2UtdG8taGF2ZSIgc3R1ZmYuCj4+Pj4gU2luY2UgdGhlIE9wZW5X
cnQgZGVmYXVsdCBpcyB0byBwcm92aWRlIHRoZSBuZWNlc3NhcnkgbWluaW11bSwgdGhlCj4+Pj4g
ZGVmYXVsdCBjb25maWcgc2hvdWxkIGFsc28gbWlycm9yIHRoaXMgY29uY2VwdCAoYWdhaW4sIHRo
dXMgbWFya2luZyB0aGUKPj4+PiAiZXh0cmEiKS4KPj4+PiAKPj4+PiBTbywgd2hpbGUgSSdtIG5v
dCBzdXJlIHdoZXRoZXIgSSByZWFsbHkgbGlrZSB5b3VyIGlkZWEgaW4gZ2VuZXJhbCwgSSdkCj4+
Pj4gY3JlYXRlIHNvbWV0aGluZyBsaWtlCj4+Pj4gCj4+Pj4gQ09ORklHX0hVR0VfRkxBU0gKPj4+
PiBDT05GSUdfRVhUUkFfTUVNT1JZCj4+Pj4gCj4+Pj4gb3Igd2hhdGV2ZXIgc2ltaWxhciB0byBt
YXJrIHRoZSAiYmlnIiBkZXZpY2VzIGlmIEkgaGFkIHRvLgo+Pj4+IAo+Pj4+IEJlc3QKPj4+PiAK
Pj4+PiBBZHJpYW4KPj4+PiAKPj4+Pj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4+Pj4g
RnJvbTogb3BlbndydC1kZXZlbCBbbWFpbHRvOm9wZW53cnQtZGV2ZWwtYm91bmNlc0BsaXN0cy5v
cGVud3J0Lm9yZ10KPj4+Pj4gT24gQmVoYWxmIE9mIFBoaWxpcCBQcmluZGV2aWxsZQo+Pj4+PiBT
ZW50OiBTYW1zdGFnLCAyLiBNYWkgMjAyMCAyMzo1NAo+Pj4+PiBUbzogT3BlbldydCBEZXZlbG9w
bWVudCBMaXN0IDxvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnPgo+Pj4+PiBTdWJqZWN0
OiBbT3BlbldydC1EZXZlbF0gUHJvcG9zYWw6IERpZmZlcmVudGlhdGluZyAic2tpbm55IiBwbGF0
Zm9ybXMKPj4+PiBmcm9tCj4+Pj4+IG90aGVycy4uLiAocmVzZW5kaW5nKQo+Pj4+PiAKPj4+Pj4g
SGkgYWxsLAo+Pj4+PiAKPj4+Pj4gV2Ugc29tZXRpbWVzIGdldCBpbnRvIGRlYmF0ZXMgYWJvdXQg
d2hldGhlciBjZXJ0YWluIGZ1bmN0aW9uYWxpdHkKPj4+PiBzaG91bGQKPj4+Pj4gYmUgYWxsb3dl
ZCBhbmQgb2Z0ZW50aW1lcyB0aGUgZ2F0aW5nIGZhY3RvciBpcyDigJx3aWxsIHRoaXMgZml0IGlu
IGEKPj4+PiBza2lubnkKPj4+Pj4gcGxhdGZvcm3igJ0gKGkuZS4gc29tZXRoaW5nIGhpZ2hseSBj
b25zdHJhaW5lZCwgbGlrZSAzMk1CIG9mIERSQU0pPyAgSQo+Pj4+IHN1cHBvc2UKPj4+Pj4gdGhl
cmXigJlzIGEgc2ltaWxhciBhcmd1bWVudCBhYm91dCB3aGF0IGEg4oCcc21hbGwgZm9vdHByaW50
4oCdIG1hY2hpbmUgaGFzCj4+Pj4gaW4KPj4+Pj4gdGVybXMgb2YgRmxhc2gsIGFzIHdlbGwuCj4+
Pj4+IAo+Pj4+PiBTb21lIG9mIHVzIHdvcmsgd2l0aCBtb3JlIGN1cnJlbnQgbWFjaGluZXMgdGhh
dCBhcmUgYWxzbyBtb3JlCj4+Pj4gY2FwYWJsZSwKPj4+Pj4gcmVhbGl6aW5nIHRoYXQgZXZlbnR1
YWxseSBtYWNoaW5lcyB3aXRoIDMyTUIgb2YgRFJBTSBhbmQgMTI4TUIgb2YKPj4+PiBGbGFzaAo+
Pj4+PiB3aWxsIOKAnGFnZSBvdXTigJ0gdGhyb3VnaCBmYWlsdXJlIGFuZCBzY2FyY2l0eS4KPj4+
Pj4gCj4+Pj4+IEJ5IHRoZW4gd2XigJlsbCBoYXZlIGEgbmV3IOKAnG5vcm1hbOKAnSBhYm91dCB3
aGF0IHRoZSBtaW5pbXVtIGV4cGVjdGF0aW9ucwo+Pj4+PiBhcmUsIGFuZCB0aGUgY29udmVyc2F0
aW9uIHdpbGwgY29udGludWUsIGJ1dCB3aXRoIGRpZmZlcmVudAo+Pj4+IHBhcmFtZXRlcnMuCj4+
Pj4+IAo+Pj4+PiBVbmRlcnN0YW5kaW5nIHRoYXQgdGhlIGRlZmluaXRpb24gb2YgYSDigJxza2lu
bnnigJ0gbWFjaGluZSBpc27igJl0IHRvZGF5Cj4+Pj4gd2hhdCBpdAo+Pj4+PiB3YXMgNSB5ZWFy
cyBhZ28sIGFuZCB0aGF0IGl0IHdvbuKAmXQgYmUgdGhlIHNhbWUgYWdhaW4gaW4gYW5vdGhlciA1
Cj4+Pj4geWVhcnMsIEnigJlkCj4+Pj4+IGxpa2UgdG8gcHJvcG9zYWwgYSBDT05GSUdfIHN5bWJv
bCB0aGF0IGRlbm90ZXMgdGhhdCBhIHBsYXRmb3JtIGlzIGluCj4+Pj4gYSBjbGFzcyBvZgo+Pj4+
PiBjb25zdHJhaW5lZCBhcmNoaXRlY3R1cmVzLgo+Pj4+PiAKPj4+Pj4gT3IsIGNvbnZlcnNlbHks
IHRoYXQgYSBwbGF0Zm9ybSBkb2VzbuKAmXQgaGF2ZSB0byBvYnNlcnZlIG92ZXJseQo+Pj4+IHJl
c3RyaWN0aXZlCj4+Pj4+IGNvbnN0cmFpbnRzIG9uIOKAnHdoYXQgd2lsbCBmaXTigJ0uCj4+Pj4+
IAo+Pj4+PiAoVGhlIHNtYWxsZXN0IHJvdXRlciBwbGF0Zm9ybSBJIG93biBoYXMgMjU2TUIgb2Yg
RFJBTSwgYW4gMkdCIG9mCj4+Pj4gRmxhc2ggZm9yCj4+Pj4+IGluc3RhbmNlLCBhbmQgaXTigJlz
IGEgMTIgeWVhcnMgb2xkIFBDIEVuZ2luZXMgQWxpeCAyROKApiBtb3N0IG9mIHRoZQo+Pj4+IOKA
nGN1cnJlbnTigJ0KPj4+Pj4gbWFjaGluZXMgSSBoYXZlIGFyZSBBTUQ2NCBhbmQgaGF2ZSA2NEdC
IG9mIERSQU0gYW5kIDMyR0Igb3IgbW9yZSBvZgo+Pj4+PiBGbGFzaOKApiB3aXRoIDI1NkdCIGJl
aW5nIHRoZSBtZWRpYW7igKYpCj4+Pj4+IAo+Pj4+PiBUaGlzIHdvdWxkIGFsbG93IHVzIHRvIGRl
dmVsb3AgcGFja2FnaW5nIHRoYXQgYm90aCBmaXRzIGludG8KPj4+PiBjb25zdHJhaW5lZAo+Pj4+
PiBhcmNoaXRlY3R1cmVzLCBhcyB3ZWxsIGFzIHRhcmdldGluZyBmdXJ0aGVyIGFsb25nIHRoZSBl
dm9sdmluZyBjdXJ2ZQo+Pj4+IG9mIOKAnG1vcmUKPj4+Pj4gUkFNLCBtb3JlIGRpc2vigJ0gdGhh
dCBuZXdlciBhbmQgbmV3ZXIgcGxhdGZvcm1zIGluZXZpdGFibHkgZm9sbG93Lgo+Pj4+PiAKPj4+
Pj4gRm9yIGluc3RhbmNlLCBJIHdhcyBvbiBJUkMgeWVzdGVyZGF5IHdpdGggSm8tUGhpbGlwcCB0
YWxraW5nIGFib3V0Cj4+Pj4gd2hldGhlcgo+Pj4+PiB0aGUgeHRfZ2VvaXAgZGF0YWJhc2Ugc2hv
dWxkIGJlIHByb3BhZ2F0ZWQgYWNyb3NzIHN5c3VwZ3JhZGVzLAo+Pj4+PiB1bmRlcnN0YW5kaW5n
IHRoYXQ6Cj4+Pj4+IAo+Pj4+PiAoMSkgc29tZSBwZW9wbGUgbWlnaHQgdXNlIGl0IGluIHRoZWly
IGZpcmV3YWxsIHJ1bGVzCj4+Pj4gKC9ldGMvZmlyZXdhbGwudXNlcikgdG8KPj4+Pj4gYmxvY2sg
Y2VydGFpbiBjb3VudHJ5IGNvZGVzIGFzIHBhcnQgb2YgdGhlaXIgc3lzdGVtIGNvbWluZyB1cCwg
YW5kCj4+Pj4gZG9u4oCZdAo+Pj4+PiB3YW50IHRvIGJlIGluIHRoZSB2dWxuZXJhYmxlIHBvc2l0
aW9uIG9mIGp1c3QgaGF2aW5nIHBlcmZvcm1lZCBhCj4+Pj4gc3lzdXBncmFkZQo+Pj4+PiBhbmQg
cmVib290LCBidXQgbm93IGZpbmRpbmcgdGhlbXNlbHZlcyB3aXRob3V0IHRoZSBnZW8tbG9jYXRp
b24KPj4+PiBkYXRhYmFzZQo+Pj4+PiBhbmQgdGhlcmVmb3JlIG5vdCBhYmxlIHRvIGJsb2NrIGNl
cnRhaW4gY291bnRyaWVzLCBJU1BzLCBldGMuIHRoYXQKPj4+PiBhcmUga25vd24gdG8KPj4+Pj4g
aGFyYm9yIEFQVOKAmXM7Cj4+Pj4+IAo+Pj4+PiAoMikgdGhlIGRhdGFiYXNlIHRha2VzIHNsaWdo
dGx5IG92ZXIgN01CIHRvZGF5LCBhbmQgdGhhdCBtaWdodCBiZQo+Pj4+IG1vcmUgdGhhbgo+Pj4+
PiBvbmUgY2FuIHJlYXNvbmFibGUgcHJvcGFnYXRlIGR1cmluZyBhIHN5c3VwZ3JhZGUsIGFuZCBz
b21lIHBlb3BsZQo+Pj4+IG1pZ2h0Cj4+Pj4+IG5vdCB3YW50IHRvIHJpc2sgYSBmYWlsZWQgc3lz
dXBncmFkZeKApiB1bmRlcnN0YW5kaW5nIHRoYXQgdGhleSBjYW4gcmUtCj4+Pj4+IGRvd25sb2Fk
IGFuZCByZS1pbnN0YWxsIHRoZSBkYXRhYmFzZSB3aXRob3V0IHRvbyBtdWNoIHRyb3VibGUgKGl0
Cj4+Pj4gdGFrZXMgYQo+Pj4+PiBjb3VwbGUgb2YgbWludXRlcyB0byBkb3dubG9hZCBhbmQgdW5w
YWNrLCBldmVuIG9uIGEgbW9kZXN0IGJyb2FkYmFuZAo+Pj4+PiBjb25uZWN0aW9uKTsKPj4+Pj4g
Cj4+Pj4+IE15IHByb3Bvc2FsIGlzIHRoZSBDT05GSUdfU0tJTk5ZIHBhcmFtZXRlciAoYW5kIHBv
c3NpYmx5IG90aGVycywgaWYKPj4+PiB3ZQo+Pj4+PiBuZWVkIHRvIHRyaWFnZSBpbiBtdWx0aXBs
ZSBkaW1lbnNpb25zOyBzZWUgYmVsb3cpLiAgSWYgdGhpcyBpcyBzZXQsCj4+Pj4gdGhlbgo+Pj4+
PiBjb25zZXJ2YXRpdmUgZGVjaXNpb25zIG5lZWQgdG8gYmUgbWFkZSBpbiBwYWNrYWdpbmcgYWJv
dXQgZGlzayBhbmQKPj4+PiBSQU0KPj4+Pj4gY29uc3VtcHRpb24uICBJZiB0aGlzIGlzbuKAmXQg
c2V0LCBwYWNrYWdpbmcgbWlnaHQgYXNzdW1lIHRoZXJl4oCZcyDigJxyb29tCj4+Pj4gdG8KPj4+
Pj4gc3RyZXRjaCBvbmXigJlzIGxlZ3PigJ0uCj4+Pj4+IAo+Pj4+PiBJbiB0aGUgcHJpb3Igc2Nl
bmFyaW8sIHRoZSBhc3N1bXB0aW9uIHdvdWxkIGJlIHRoYXQgYmFja2luZyB1cCB0aGUKPj4+PiBn
ZW8tCj4+Pj4+IGxvY2F0aW9uIGRhdGFiYXNlIGlzIGZlYXNpYmxlIG9uIHVuY29uc3RyYWluZWQg
cGxhdGZvcm1zLCBhbmQgb25lCj4+Pj4gY291bGQgYWRkOgo+Pj4+PiAKPj4+Pj4gaWZuZXEgKCQo
Q09ORklHX1NLSU5OWSkseSkKPj4+Pj4gZGVmaW5lIFBhY2thZ2UvaXB0Z2VvaXAvY29uZmZpbGVz
Cj4+Pj4+IC91c3Ivc2hhcmUveHRfZ2VvaXAvCj4+Pj4+IGVuZGVmCj4+Pj4+IGVuZGlmCj4+Pj4+
IAo+Pj4+PiB0byBmZWVkcy9wYWNrYWdlcy9uZXQveHRhYmxlcy1hZGRvbnMvTWFrZWZpbGUgZm9y
IGV4YW1wbGUuCj4+Pj4+IAo+Pj4+PiBUaGVuIHdlIGNhbiBtb3ZlIGF3YXkgZnJvbSB0aGUgYXJn
dW1lbnQgYWJvdXQg4oCcc2hvdWxkIFggYmUgYWxsb3dlZOKAnQo+Pj4+IHRvCj4+Pj4+IHRoZSBt
b3JlIHByb2R1Y3RpdmUgZGlzY3Vzc2lvbiDigJx3aGVuIGlzIGl0IGFjY2VwdGFibGUgdG8gYWxs
b3cgWOKAnQo+Pj4+IGluc3RlYWQ/Cj4+Pj4+IAo+Pj4+PiBBbmQgaG9wZWZ1bGx5LCB3aGF04oCZ
cyDigJxhbGxvd2Vk4oCdIChvciB2aWFibGUpIHdpbGwgb25seSBpbmNyZWFzZSBvdmVyCj4+Pj4g
dGltZSwKPj4+Pj4gZ2l2aW5nIHVzIG1vcmUgYW5kIG1vcmUgb3B0aW9ucyB0byB0YWlsb3IgT3Bl
bldSVCBpbnRvIHRoZSBvcHRpbWFsCj4+Pj4+IGNvbmZpZ3VyYXRpb24gZm9yIG91ciBuZWVkcy4K
Pj4+Pj4gCj4+Pj4+IFNvLCBJIHB1dCB0byB5b3UgNCBxdWVzdGlvbnM6Cj4+Pj4+IAo+Pj4+PiAo
MSkgc2hvdWxkIHdlIGluY2x1ZGUgQ09ORklHX1NLSU5OWT8KPj4+Pj4gKDIpIHdoYXQgaXMgdGhl
IG1pbmltdW0gRFJBTSB0aGF0IGEgcGxhdGZvcm0gc2hvdWxkIGhhdmUgdG8gbm90IGJlCj4+Pj4+
IGNvbnNpZGVyZWQg4oCcc2tpbm554oCdPwo+Pj4+PiAoMykgd2hhdCBpcyB0aGUgbWluaW11bSBG
bGFzaCAob3Igb3RoZXIgc3RvcmFnZSkgdGhhdCBhIHBsYXRmb3JtCj4+Pj4gc2hvdWxkIGhhdmUK
Pj4+Pj4gdG8gbm90IGJlIGNvbnNpZGVyZWQg4oCcc2tpbm554oCdPwo+Pj4+PiAoNCkgc2hvdWxk
IGNsb2NrIHNwZWVkIGZpZ3VyZSBpbnRvIHRoaXM/ICBvciBzb21lIOKAnG5vcm1hbGl6ZWTigJ0K
Pj4+PiBhY2NvdW50aW5nIG9mCj4+Pj4+IGNsb2NrIHNwZWVkLCB0aGF0IHRha2VzIHN1cGVyLXNj
YWxhciBhbmQgZGVlcCBwaXBlbGluaW5nIGludG8KPj4+PiBjb25zaWRlcmF0aW9uLAo+Pj4+PiBz
dWNoIGFzIE1JUFMsIGJlIGNvbnNpZGVyZWQ/ICBvciBzaG91bGQgdGhpcyBiZSBhbiBvcnRob2dv
bmFsCj4+Pj4gcGFyYW1ldGVyLAo+Pj4+PiBzdWNoIGFzIENPTkZJR19TTE9XPwo+Pj4+PiAKPj4+
Pj4gSeKAmWxsIGtpY2sgb2ZmIHdpdGggbXkgb3duIGluaXRpYWwgZW1waXJpY2FsbHkgZGVyaXZl
ZCBhbnN3ZXJzLCB3aXRoOgo+Pj4+PiAKPj4+Pj4gKDEpIHllcywgaXQgY2Fu4oCZdCByZWFsbHkg
ZG8gYW55IGhhcm3igKYgcGVvcGxlIHdobyBkb27igJl0IHdhbnQgdG8gZGVhbAo+Pj4+IHdpdGgg
aXQKPj4+Pj4gd29u4oCZdCwgbWFraW5nIGV2ZXJ5dGhpbmcgZWZmZWN0aXZlbHkg4oCcc2tpbm55
4oCdIHdoaWNoIGlzIHRoZSBzdGF0dXMKPj4+PiBxdW87Cj4+Pj4+ICgyKSAyNTZNQiBpcyBhbHJl
YWR5IGZhaXJseSBjYXBhYmxl4oCmIHdlIGNhbiB1c2UgdGhhdCBhcyB0aGUgaW5pdGlhbAo+Pj4+
IGRlZmluaXRpb24gb2YKPj4+Pj4g4oCcc2tpbm554oCdIGFuZCB0d2VhayBpdCBhcyBleHBlcmll
bmNlIGRpY3RhdGVzIGlzIHJlYXNvbmFibGU7Cj4+Pj4+ICgzKSA1MTJNQiBpcyBhbHNvIGEgZmFp
ciBhbW91bnQgb2Ygc3BhY2UgZm9yIGltYWdlIHBsdXMgZXh0ZW5kZWQKPj4+PiBsb2dnaW5nOwo+
Pj4+PiAoNCkgYWJvdmUgMTAwMCBNSVBTLCBJ4oCZZCBub3QgY29uc2lkZXIgYW4gZW1iZWRkZWQg
cGxhdGZvcm0gdG8gYmUKPj4+PiDigJxzbG934oCd4oCmIGEKPj4+Pj4gNTAwTUh6IHByb2Nlc3Nv
ciBleGVjdXRpbmcgMiBpbnN0cnVjdGlvbnMgcGVyIGN5Y2xlLCBvciBoYXZpbmcgMgo+Pj4+IGNv
cmVzIGFuZCAxCj4+Pj4+IGluc3RydWN0aW9uIHBlciBjb3JlIHBlciBjeWNsZSwgaXMgZmFpcmx5
IGNhcGFibGUsIGVhc2lseSBhYmxlIHRvCj4+Pj4gaGFuZGxlIHRyYWZmaWMKPj4+Pj4gc2hhcGlu
ZyBvbiBhIDEwME1iL3MgbGluazsKPj4+Pj4gCj4+Pj4+IFdoYXQgZG9lcyBldmVyeW9uZSBlbHNl
IHRoaW5rPwo+Pj4+PiAKPj4+Pj4gVGhhbmtzLAo+Pj4+PiAKPj4+Pj4gLVBoaWxpcAo+Pj4+PiAK
Pj4+Pj4gCj4+Pj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4+Pj4+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4+Pj4+IG9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKPj4+Pj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFu
L2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPj4+IAo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPj4+IG9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cj4+
PiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnCj4+PiBodHRwczovL2xpc3RzLm9wZW53
cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo+PiAKPj4gCj4+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IG9wZW53cnQtZGV2ZWwg
bWFpbGluZyBsaXN0Cj4+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPj4gaHR0cHM6
Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwKPiAKPiBf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IG9wZW53cnQt
ZGV2ZWwgbWFpbGluZyBsaXN0Cj4gb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwo+IGh0
dHBzOi8vbGlzdHMub3BlbndydC5vcmcvbWFpbG1hbi9saXN0aW5mby9vcGVud3J0LWRldmVsCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1k
ZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczov
L2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
