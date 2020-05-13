Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBDA1D06EE
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 08:07:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9Ltcfkreq+hhtIM+Gtq/niWpaox2t99YHOFck3I0pcs=; b=cUHX6ayh/t5OOrV9BZ+JOzX7+
	JwZtb7w3VXnxJZdT+RHCyqFxByGfmacjqrqhigUk+bfB5OuG/Ze5yNBL5kYiNTmTnR2eRrR8LnPFJ
	CjquKPyVFdOLiYJ264GvQoZaTeQyOPthWeBIO/LRaP0JK0J/r4klIFQuMvOZYIDsLe/ou4e9/7cnb
	Qh25Kmrw4VHccstQqMvGdpy0Vo8HjV/NdK7DRl1fG+aQJRPjtYtAHVRACzF2DGjL/xbx9ihWii42W
	klJlNdkjdZwYh4FA7tSTMUbvD5ia+WMACLZzgsI89noMJiDO2CWpPP/tKA4BplDWTGYCz5tu1Hl+6
	GTyaz6Y0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYkYY-00087K-DD; Wed, 13 May 2020 06:07:50 +0000
Received: from vds2011x11.startdedicated.de ([62.138.18.229]
 helo=mail.softart-ge.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYkYO-000855-WE
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 06:07:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.softart-ge.com (Postfix) with ESMTP id 88C29C065F
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 May 2020 08:02:23 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at softart-ge.com
Received: from mail.softart-ge.com ([127.0.0.1])
 by localhost (softart-ge.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MJultKZh74MT for <openwrt-devel@lists.openwrt.org>;
 Wed, 13 May 2020 08:02:18 +0200 (CEST)
Received: from [192.168.20.124] (176-12-0-179.pon.spectrumnet.bg
 [176.12.0.179])
 by mail.softart-ge.com (Postfix) with ESMTPA id B3FF1C0312
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 May 2020 08:02:17 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
References: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
From: Reiner Karlsberg <karlsberg@softart-ge.com>
Message-ID: <6ffd6d5b-987a-c768-2afd-3ad1e231fd03@softart-ge.com>
Date: Wed, 13 May 2020 09:02:13 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAJQUmm6Y-XFYUivOBZoFB9teO9keaEmoHdnG07P6zP=ySkqs3g@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_230741_320255_765D2B05 
X-CRM114-Status: GOOD (  23.32  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] Sysupgrade and Failed to kill all processes
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

QXBwbGF1c2UsIGFwcGxhdXNlLgoKVGhlIGZpcnN0IChwYXJ0aWFsKSBkb2NzIG9mIHRoZSBtYWdp
YyBvZiBzeXN1cGdyYWRlLiBBbmQgaXRzIHBpdGZhbGxzLgoKSGF2aW5nIGhhZCB2YXJpb3VzIGlz
c3VlcyB3aXRoIHN5c3VwZ3JhZGUgbXlzZWxmIGluIHRoZSBwYXN0IChhbHNvIGRvaW5nIHN5c3Vw
Z3JhZGUgT1RBKSwgSSBhZGQgZm9sbG93aW5nIG5vdGVzOgotIEhhdmluZyBvcGVuIGZpbGVzIG9u
IHN0b3JhZ2UgZGV2aWNlcyAoaS5lLiBmb3Igc3dhcCwgYnV0IGFsc28gZXhwbGljaXRseSBvcGVu
ZWQpIGJyb2tlIHN5c3VwZ3JhZGUgZm9yIG1lLgotIE5vIHJlYWwgZXJyb3ItZmVlZGJhY2ssIGlu
IGNhc2Ugc3lzdXBncmFkZSB3YXMgX25vdF8gZG9uZS4gRXZlbiBsZWF2aW5nIHRoZSBmaWxlc3lz
dGVtIGluIGluY29uc2lzdGVudCBzdGF0ZSwKYXMgInN5c3VwZ3JhZGUgLi4uIC1mIG15ZmlsZXN0
b2Jlc2F2ZWQudGFyLmd6IiB3YXMgYXBwbGllZCB0byAoc3RpbGwpIHJ1bm5pbmcgaW1hZ2UsIHdp
dGhvdXQgdXBncmFkaW5nIHRvIG5ldyBmaXJtd2FyZS5iaW4KClJlZ2FyZGluZyBraWxsaW5nIHRo
ZSBwcm9jZXNzZXMgaW4gYSAxMC10aW1lcyBsb29wLCBpbiBhZGRpdGlvbiBvZiBhIHNob3J0IHNs
ZWVwIGluIGV2ZXJ5IGl0ZXJhdGlvbiwKbWF5IGJlIGFsc28gdG8gY2hlY2sgZm9yICJwcm9jZXNz
IHN0aWxsIGFsaXZlIi4KCkhhdmluZyByZWFkIHlvdXIgbWFpbCwgSSBhbSBoYXBweSwgdGhhdCBm
b3Igc29tZSB0aW1lIGFscmVhZHkgSSBleHBsaWNpdGx5IGRvIHRoZSBraWxsaW5nIG9mIHByb2Nl
c3NlcyBteXNlbGYsCmJlZm9yZSBzeXN1cGdyYWRlLiBFc3BlY2lhbGx5LCBpbiBjYXNlIEkgaGF2
ZSBub24tc3RhbmRhcmQgcHJvZ3JhbXMgcnVubmluZywgbGlrZSBuZ2lueCBvciBzcXVpZC4KQXMg
dGhlIGRlZmF1bHQgY29uZmlnIG9mIHNxdWlkIGRlZmluZXMgYSAxMHMgZHVyYXRpb24gZm9yIHNo
dXRkb3duLgoKCkFtIDEzLjA1LjIwMjAgdW0gMDg6MTcgc2NocmllYiBNaWNoYWVsIEpvbmVzOgo+
IEkndmUgYmVlbiBpbnZlc3RpZ2F0aW5nIGEgcHJvYmxlbSB3aXRoIHN5c3VwZ3JhZGUgZmFpbGlu
ZyB3aXRoIHRoZSBlcnJvciBtZXNzYWdlICJGYWlsZWQgdG8ga2lsbCBhbGwgcHJvY2Vzc2VzIiwg
YW5kIAo+IHRoZW4gaGFuZ2luZyBpbmRlZmluaXRlbHkuCj4gCj4gVGhpcyBoYXBwZW5zIG1heWJl
IG9uY2UgZXZlcnkgMTAtMjAgc3lzdXBncmFkZXMsIGFuZCBpdCdzIGtpbmQgb2YgYSBwYWluLgo+
IAo+IFNvIGZhciBJJ3ZlIGRldGVybWluZWQgdGhpcyB3b3JrZmxvdyB0aGF0wqB0aGUgc3lzdXBn
cmFkZSBjb21tYW5kIGZvbGxvd3MuIE5vdGUsIEknbSBub3QgYWltaW5nIGZvciAxMDAlIGFjY3Vy
YWN5LCBidXQgCj4ganVzdCBicm9hZCBzdHJva2VzLgo+IAo+IAo+IDEpIC9zYmluL3N5c3VwZ3Jh
ZGUgbG9jYXRlcyB0aGUgZmlsZSB0byB1cGdyYWRlIGZyb20gb24gdGhlIGZpbGVzeXN0ZW0sIG9y
IGlmIHRoZSBzZWNvbmQgb3B0aW9uIHRvIHN5c3VwZ3JhZGUgc3RhcnRzIAo+IHdpdGggaHR0cDov
LywgaXQgZG93bmxvYWRzIHRoZSBmaXJtd2FyZSBmaWxlIHVzaW5nIHdnZXQuCj4gMikgL3Nibi9z
eXN1cGdyYWRlIGRvZXMgc29tZSBtaW5vciB2YWxpZGF0aW9uIG9mIHZhcmlvdXMgdGhpbmdzLCBh
bmQgZ3JhYnMgd2hhdGV2ZXIgY29uZmlnIGZpbGVzIGl0IHRoaW5rcyB0aGUgZW5kIHVzZXIgCj4g
d2FudHMgdG8gYmUgcmVzdG9yZWQgYW5kIHBhY2tzIHRoZW0gdXAgaW50byBzb21lIGtpbmQgb2Yg
dGFyYmFsbC4KPiAzKSBzeXN1cGdyYWRlIHNlbmRzIGEgbWVzc2FnZSwgdmlhIHVidXMsIHRvIHBy
b2NkLCB0byBpbml0aWF0ZSB0aGUgdXBncmFkZS4KPiA0KSBQcm9jZCBkb2VzIHNvbWUgc3R1ZmYg
d2hpY2ggSSBoYXZlbid0IGZpbmlzaGVkIGNvbXBsZXRlbHkgdW5kZXJzdGFuZGluZyBqdXN0IHll
dCwgYnV0IGl0IGxvb2tzIGxpa2UgZmlybXdhcmUgCj4gdmVyaWZpY2F0aW9uIHRvIG1ha2Ugc3Vy
ZSB3ZSBkb24ndCB1cGdyYWRlIHRvIGEgYmFkIGZpcm13YXJlIGZpbGUuCj4gNSkgSXQgKmRvZXMg
bm90KiBhcHBlYXIgdGhhdCBwcm9jZCB3aWxsIHByb2FjdGl2ZWx5IHRlcm1pbmF0ZSBzZXJ2aWNl
cyB1bnRpbCBldmVyeXRoaW5nIChvciBhbG1vc3QgZXZlcnl0aGluZykgaXMgc2h1dCAKPiBkb3du
LiBTZWVtcyBsaWtlIHNvbWV0aGluZyB0aGF0IHNob3VsZCBiZSBhZGRlZCB0byBpbmNyZWFzZSBy
ZWxpYWJpbGl0eS4KPiA2KSBwcm9jZCByZXBsYWNlcyBpdHNlbGYgKGV4ZWN2cMKgc3lzdGVtY2Fs
bCkgd2l0aCB0aGUgcHJvZ3JhbSAvc2Jpbi91cGdyYWRlZC4gVGhpcyBtZWFucyB0aGF0IHByb2Nk
IGlzICpubyBsb25nZXIgCj4gcnVubmluZyosIFBJRCAxIGlzIG5vdyAvc2Jpbi91cGdyYWRlZC4g
U28gc2VydmljZSBtYW5hZ2VtZW50IGlzIG5vdCBwb3NzaWJsZSBhdCB0aGlzIHBvaW50Lgo+IDcp
IC9zYmluL3VwZ3JhZGVkIG5vdyBhY3RzIGFzIFBJRDEuIEl0IGV4ZWN1dGVzIHRoZSBzaGVsbCBz
Y3JpcHQgL2xpYi91cGdyYWRlL3N0YWdlMiB3aXRoIHBhcmFtZXRlcnMuCj4gOCkgVGhlIHNoZWxs
IHNjcmlwdCBsb29wcyBvbiBhbGwgcHJvY2Vzc2VzLCBhbmQgc2VuZHMgdGhlbSB0aGUgVEVSTSBz
aWduYWwsIGFuZCB0aGVuIHRoZSBLSUxMIHNpZ25hbC4gU2VlIGVtYWlsIHN1YmplYyAKPiBmb3Ig
cHJvYmxlbXMgd2l0aCB0aGlzLgo+IDkpIHRoZSBzaGVsbCBzY3JpcHQgY3JlYXRlcyBhIG5ldyBy
YW0gZmlsZXN5c3RlbSwgbW91bnRzIGl0LCB0aGVuIGNvcGllcyBvdmVyIGEgdmVyeSBzbWFsbCBz
ZXQgb2YgYmluYXJpZXMgaW50byBpdC4KPiAxMCkgVGhlIHNoZWxsIHNjcmlwdCBjaGFuZ2VzIHJv
b3QgaW50byB0aGUgbmV3IHJhbSBmaWxlc3lzdGVtCj4gMTEpIEluc2lkZSB0aGUgcmFtZmlsZXN5
c3RlbSwgdGhlIHNoZWxsIHNjcmlwdCB3cml0ZXMgdGhlIHVwZ3JhZGVkIGZpcm13YXJlIGFuZCBz
YXZlZCBjb25maWd1cmF0aW9uIHRvIGRpc2sKPiAxMikgUmVib290Lgo+IAo+IAo+IE5vdyB0aGF0
IHRoZSB2ZXJ5IHJvdWdoIHN1bW1hcnkgaXMgb3V0IG9mIHRoZSB3YXksIEkgaGF2ZSA0IHF1ZXN0
aW9ucy4KPiAKPiAxKSBJIG5vdGljZSB0aGF0IHRoZSBzaGVsbCBzY3JpcHQgL2xpYi91cGdyYWRl
L3N0YWdlMiBpcyBkb2luZyBhIHRpZ2h0IGxvb3Agd2l0aCBraWxsIC05IHRvIHRlcm1pbmF0ZSBw
cm9jZXNzZXMuIAo+IEhvd2V2ZXIsIGl0J3Mgb25seSBsb29waW5nIGEgbWF4aW11bSBvZiAxMCB0
aW1lcywgYW5kIGl0cyBnb2luZyBhcyBmYXN0IGFzIHRoZSBzaGVsbCBjYW4gbG9vcC4KPiAKPiBX
aGF0J3MgdG8gc3RvcCB0aGlzIGxvb3AgZnJvbSBxdWlja2x5IGdvaW5nIHRocm91Z2ggZXZlcnkg
cHJvY2VzcyBhbG1vc3QgaW1tZWRpYXRlbHkgMTAgdGltZXMsIGJlZm9yZSBhIHByb2Nlc3MgdGhh
dCAKPiB3b3VsZCBiZSBhYm91dCB0byB0ZXJtaW5hdGUgdGVybWluYXRlcz8gVGhlIHByb2Nlc3Mg
aW4gcXVlc3Rpb24gbWF5IGJlIGhhbmRsaW5nIHNvbWUga2luZCBvZiBJTywgc28gdGhlIGtlcm5l
bCB3b3VsZG4ndCAKPiBpbW1lZGlhdGVseSB0ZXJtaW5hdGUgaXQuCj4gCj4gU2hvdWxkbid0IHRo
ZXJlIGJlIHNvbWUgdmVyeSBicmllZiBzbGVlcCBhdCB0aGUgZW5kIG9mIGVhY2ggbG9vcCBpdGVy
YXRpb24gdG8gZW5zdXJlIHRoYXQgdGhlIHByb2Nlc3NlcyB0aGF0IGFyZSBnb2luZyAKPiB0byBw
cmFjdGljYWxseSB0ZXJtaW5hdGUgaGF2ZSBkb25lIHNvPwo+IAo+IDIpIFdoeSBpcyB0aGUgYmVo
YXZpb3Igb24gZmFpbHVyZSB0byB0ZXJtaW5hdGUgcHJvY2Vzc2VzIHRvIGp1c3QgZ2l2ZSB1cD8g
VGhhdCBsZWF2ZXMgZGV2aWNlcyBoYW5naW5nIHdpdGhvdXQgYW55IAo+IG5ldHdvcmsgY29ubmVj
dGl2aXR5Lgo+IEEgcmVib290IHdpdGggc29tZSBsb2dnaW5nIG9uIGRpc2sgd291bGQgYWxsb3cg
Zm9yIHJlbW90ZSBzeXN1cGdyYWRlc8KgdG8gaGF2ZSBzb21lIGtpbmQgb2YgcmVjb3ZlcmFiaWxp
dHkuCj4gCj4gMykgSXMgbG9vcGluZyBvdmVyIHNpZ2tpbGwgYSByZWxpYWJsZSB3YXkgdG8gdGVy
bWluYXRlIGFsbCBwcm9jZXNzZXM/Cj4gSSB3YXMgdW5kZXIgdGhlIGltcHJlc3Npb24gdGhhdCB0
aGUgb25seSByZWxpYWJsZSB3YXkgdG8gZW5zdXJlIGFsbCBwcm9jZXNzZXMgdGVybWluYXRlIGlz
IHRvIHVzZSBjZ3JvdXBzLCBhbmQgcHV0IHRoZSAKPiBwcm9jZXNzZXMgdG8gdGVybWluYXRlIGlu
IHRoZSBmcmVlemVyIGdyb3VwIGFuZCB0aGVuIGtpbGwgdGhlbSBvZmYgYWZ0ZXIgdGhleSd2ZSBi
ZWVuIGZyb3plbi4gT3RoZXJ3aXNlIHlvdSBoYXZlIAo+IGJhc2ljYWxseSBhIHJhY2UgY29uZGl0
aW9uIGJldHdlZW4gdGhlIHRlcm1pbmF0aW9uIG9mIHByb2Nlc3NlcyBhbmQgdGhlIGNyZWF0aW9u
IG9mIGNoaWxkcmVuLiBFLmcuIGEgZm9yay1ib21iIGNvdWxkIAo+IHByZXZlbnQgYWxsIHByb2Nl
c3NlcyBmcm9tIGJlaW5nIHRlcm1pbmF0ZWQuCj4gCj4gNCkgV2h5IGRvZXNuJ3QgcHJvY2QsIHBy
aW9yIHRvIGV4ZWN2cCB0aGUgL3NiaW4vdXBncmFkZWQgcHJvZ3JhbSwgc2h1dGRvd24gYWxsIHRo
ZSBzZXJ2aWNlcyB0aGF0IGFyZSBydW5uaW5nPwo+IAo+IE1heWJlIEknbSBqdXN0IG5vdCBzZWVp
bmcgd2hlcmUgaXQgZG9lcyB0aGlzLCBzbyBpZiB0aGF0J3MgdGhlIGNhc2UsIHRoZW4gSSdtIGhh
cHB5IHRvIGJlIGNvcnJlY3RlZC4KPiAKPiBCdXQgSSdtIHVuZGVyIHRoZSBpbXByZXNzaW9uIHRo
YXQgd2hlbiBub3QgdXNpbmcgY2dyb3Vwcywgc3RvcHBpbmcgYWxsIHNlcnZpY2VzIHdvdWxkIGFs
bG93IGZvciBhbnl0aGluZyB0aGF0IGlzbid0IAo+IGRvdWJsZSBmb3JrZWQgdG8gYmUgZ3JhY2Vm
dWxseSBzaHV0ZG93biBhbmQgY2xlYW5lZCB1cCBhZnRlciBpdHNlbGYuCj4gCj4gCj4gCj4gCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBvcGVud3J0
LWRldmVsIG1haWxpbmcgbGlzdAo+IG9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKPiBo
dHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo+
IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
