Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38E158469
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Jun 2019 16:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZTEx4+ZXJD3ZSE/oRZFPDTlbMHkE6k+Sf5vKQcAMLUo=; b=QfeXUDLwkX4Ub0m5WkXbmklr1
	Q5B2z83LeCRZW8mAL+ynNyYdyWTq+NhvcsNIUxeQqt64V0fA81N2+Jid7jjiytnFT/53acvSz6c5p
	bfDy3x0PhozBLfYLLXIsdYd+VU837QzdZxakHa5XM77pBydQ4XL62dSIr2u6SEmoWEQk5OYKLEwim
	2TBpASK37QhMXXhTclnWXDyoIi59dAbPOB5/q0+0U7EK9xbnTzKw8CriK99k8z1mZ09ZQi7K+Hvlx
	Ly2izzqq5JV3ERZFjF1KdjLa+DBC+BaKNf7D9Pqd25R/7X5NvzOwxlRf5MuMLI59IoTdc0C1s6zUX
	mksA/4G6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVK8-0000Ua-As; Thu, 27 Jun 2019 14:24:28 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgVJv-0000U0-CP
 for openwrt-devel@lists.openwrt.org; Thu, 27 Jun 2019 14:24:17 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id CA179103D;
 Thu, 27 Jun 2019 07:24:13 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com CA179103D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1561645453;
 bh=c9exuPDSTUYyrL2nzo0mkz9Dh3b95BWRCy3iHAnjwN4=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=rNRYQxsidHseq90+Zp5wuMoQdaQTqsAPg+PJ1e6TvZ+HchUzmOj2WtZNczcqJX9+J
 /e78keOkR6PQzgA1rzu6h4KqBonEiCHgSP+gyoSJ8BQ8YAj5sBNJi7ru2GccQSBtdP
 n2xtdxTfS6JbOE8rN1eq4hzkeZgRxhqyrCYFT1NM=
To: Koen Vandeputte <koen.vandeputte@ncentric.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <abe6feb7-80a9-4587-db0b-7f3a37a792d8@ncentric.com>
 <7a68db11-1026-e576-2c26-425ea85ef609@candelatech.com>
 <93bc6089-e313-f51f-06e9-4c0b8f36f7e7@ncentric.com>
 <3d95432a-db21-d4ef-24c4-fc3659fee0a1@candelatech.com>
 <4248b808-d8a5-1972-f423-ba34e222abc2@ncentric.com>
 <a5605840-8a4b-21a5-1e48-86971bec6108@candelatech.com>
 <06abfe46-1815-fc36-db01-2cf24bdb734e@ncentric.com>
 <4ca7aa93-1960-1373-7590-1d39c41d8768@candelatech.com>
 <efe239e4-a6dc-1328-d66e-29047290fca1@ncentric.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <f51ea660-d382-7d31-3ecb-f4beddfb997f@candelatech.com>
Date: Thu, 27 Jun 2019 07:24:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <efe239e4-a6dc-1328-d66e-29047290fca1@ncentric.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_072415_496231_90A0EE56 
X-CRM114-Status: GOOD (  29.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] ath10k-ct 4.19 and IBSS
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

T24gNi8yNy8xOSA3OjE3IEFNLCBLb2VuIFZhbmRlcHV0dGUgd3JvdGU6Cj4gCj4gT24gMjYuMDYu
MTkgMTg6MzksIEJlbiBHcmVlYXIgd3JvdGU6Cj4+IE9uIDYvMjYvMTkgOToyOCBBTSwgS29lbiBW
YW5kZXB1dHRlIHdyb3RlOgo+Pj4KPj4+IE9uIDI2LjA2LjE5IDE4OjE2LCBCZW4gR3JlZWFyIHdy
b3RlOgo+Pj4+IE9uIDYvMjYvMTkgMjowMiBBTSwgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+Pj4+
Pgo+Pj4+PiBPbiAyNS4wNi4xOSAxNTo1NCwgQmVuIEdyZWVhciB3cm90ZToKPj4+Pj4+Cj4+Pj4+
Pgo+Pj4+Pj4gT24gMDYvMjUvMjAxOSAwMjo1MyBBTSwgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+
Pj4+Pj4+Cj4+Pj4+Pj4gT24gMjQuMDYuMTkgMjI6MDQsIEJlbiBHcmVlYXIgd3JvdGU6Cj4+Pj4+
Pj4+IE9uIDYvMjQvMTkgODozMiBBTSwgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+Pj4+Pj4+Pj4g
SGkgQmVuLAo+Pj4+Pj4+Pj4gSGkgQWxsLAo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFNvIEknbSBnb2lu
ZyB0byBnaXZlIHRoaXMgYW5vdGhlciB0cnkgLi4KPj4+Pj4+Pj4+IEFzIHRoZSBJQlNTIGZ1bmN0
aW9uYWxpdHkgaXMgaGVhdmlseSBhZHZlcnRpc2VkIGFzIGEgZGVsdGEgdG8gbWFpbmxpbmUsIGl0
IHdvdWxkIGJlIHZlcnkgbmljZSB0byBnZXQgaXQgd29ya2luZyBhbHNvIDopCj4+Pj4+Pj4+Pgo+
Pj4+Pj4+Pj4gVGVzdGluZyB0aGUgbGF0ZXN0IGF0aDEway1jdCBkcml2ZXIgYW5kIGZpcm13YXJl
IHNlZW1zIHRvIGJlIGEgc3RlcCBiYWNrIGNvbXBhcmVkIHRvIHJvdWdobHkgYSBtb250aCBhZ28u
Cj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gSSdtIGN1cnJlbnRseSBzZWVpbmcgdGhlIGZpcm13YXJlIGNy
YXNoaW5nLCB3aGljaCB3YXMgbm90IHRoZSBjYXNlIGJlZm9yZToKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+
Pgo+Pj4+Pj4+Pj4gYXRoMTBrLWN0ICsgaHR0LWZ3Ogo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IGh0dHBz
Oi8vcGFzdGViaW4uY29tL3Jhdy83U3k5eXg2cwo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBMb29rcyBsaWtl
IGZpcm13YXJlIHJhbiBvdXQgb2Ygc29tZSBXTUkgZXZlbnQgYnVmZmVycyBhbmQgY3Jhc2hlZCBp
bnN0ZWFkIG9mIGhhbmRsaW5nCj4+Pj4+Pj4+IGl0IG1vcmUgZ3JhY2VmdWxseS4KPj4+Pj4+Pj4K
Pj4+Pj4+Pj4gUGxlYXNlIHRyeSB0aGUgYXR0YWNoZWQgKHVudGVzdGVkKSBmaXJtd2FyZSBhbmQg
c2VlIGlmIGl0IGJlaGF2ZXMgYmV0dGVyLgo+Pj4+Pj4+Pgo+Pj4+Pj4+IEhpIEJlbiwKPj4+Pj4+
Pgo+Pj4+Pj4+IDEgc3RlcCBmb3J3YXJkIGhlcmUuCj4+Pj4+Pj4KPj4+Pj4+PiBJJ20gbm90IHNl
ZWluZyBjcmFzaGVzIGFueW1vcmUgdXNpbmcgdGhlIHRlc3QtZmlybXdhcmUuCj4+Pj4+Pj4KPj4+
Pj4+PiBodHRwczovL3Bhc3RlYmluLmNvbS9yYXcvNFplWHU3aXcKPj4+Pj4+Pgo+Pj4+Pj4+Cj4+
Pj4+Pj4gSSd2ZSBsaW5rZWQgdXAgMiBJQlNTIGRldmljZXMgKHdhdmUgMSwgVkhUODApCj4+Pj4+
Pj4KPj4+Pj4+PiBPTFNSIHRyYWZmaWMgKFVEUCkgd29ya3MgYW5kIHBhY2tldHMgaGVyZSBhcmUg
bmljZWx5IGdvaW5nIGJhY2sgJiBmb3J0aC4KPj4+Pj4+Pgo+Pj4+Pj4+IFNpbXBseSBwaW5naW5n
IChJQ01QKSBiZXR3ZWVuIHRoZSAyIGRldmljZXMgZG9lcyBub3Qgd29yay4KPj4+Pj4+Pgo+Pj4+
Pj4+IFdoZW4gc2VuZGluZyAxMDAgcGluZ3MsICg2NCBieXRlIGxhcmdlKcKgIHNvbWV0aW1lcyAx
IGdldHMgdGhyb3VnaCAuLiBidXQgd2l0aCBhIGxhdGVuY3kgb2YgPiA1MDBtcwo+Pj4+Pj4+Cj4+
Pj4+Pj4KPj4+Pj4+PiBJIHRoaW5rIGlmIHRoZSBzcGxhdCBhbmQgdGhlIGJlYWNvbiBzcGFtIGJl
bG93IGNvdWxkIGJlIGZpeGVkIC4uIHRoaXMgd291bGQgYmUgYSBtYWpvciBzdGVwIGZvcndhcmQ6
Cj4+Pj4+Pj4KPj4+Pj4+PiBbwqDCoCAzMC4zMjg0MjNdIC0tLS0tLS0tLS0tLVsgY3V0IGhlcmUg
XS0tLS0tLS0tLS0tLQo+Pj4+Pj4+IFvCoMKgIDMwLjMzMzI1MV0gV0FSTklORzogQ1BVOiAwIFBJ
RDogMTU3OCBhdCAKPj4+Pj4+PiAvbW50L3JhbWRpc2sva29lbi9maXJtd2FyZS9idWlsZHMvZ2Vu
ZXJpY19yYjkyMi9idWlsZF9kaXIvdGFyZ2V0LW1pcHNfMjRrY19tdXNsL2xpbnV4LWFyNzF4eF9t
aWtyb3Rpay9hdGgxMGstY3QtMjAxOS0wNS0wOC1mOThiNmRjNC9hdGgxMGstNC4xOS9tYWMuYzo2
NTYzIGF0aDEwa19tYWNfdmlmX2JlYWNvbl9mcmVlKzB4YzdjLzB4MTE1YyAKPj4+Pj4+PiBbYXRo
MTBrX2NvcmVdCj4+Pj4+Pj4gW8KgwqAgMzAuMzU1NjM2XSBNb2R1bGVzIGxpbmtlZCBpbjogbWJ0
IGF0aDlrIGF0aDlrX2NvbW1vbiBxY3NlcmlhbCBwcHBvZSBwcHBfYXN5bmMgb3B0aW9uIGNkY19t
YmltIGF0aDlrX2h3IGF0aDEwa19wY2kgYXRoMTBrX2NvcmUgYXRoIHVzYl93d2FuIHNpZXJyYV9u
ZXQgCj4+Pj4+Pj4gc2llcnJhIHJuZGlzX2hvc3QgcW1pX3d3YW4gcHBwb3ggcHBwX2dlbmVyaWMg
bWFjODAyMTEgaXB0YWJsZV9uYXQgaXB0YWJsZV9tYW5nbGUgaXB0YWJsZV9maWx0ZXIgaXB0X1JF
SkVDVCBpcHRfTUFTUVVFUkFERSBpcF90YWJsZXMgaHVhd2VpX2NkY19uY20gCj4+Pj4+Pj4gZnRk
aV9zaW8gY2ZnODAyMTEgY2RjX3N1YnNldCBjZGNfbmNtIGNkY19ldGhlciB4dF90aW1lIHh0X3Rj
cHVkcCB4dF9zdGF0ZSB4dF9uYXQgeHRfbXVsdGlwb3J0IHh0X21hcmsgeHRfbWFjIHh0X2xpbXQK
Pj4+Pj4+PiBbwqDCoCAzMC40MjczMzFdwqAgbmxzX3V0ZjggbmxzX2lzbzg4NTlfMSBubHNfY3A0
MzcgYXV0aGVuYyBlaGNpX3BsYXRmb3JtIHNkX21vZCBzY3NpX21vZCBlaGNpX2hjZCBncGlvX2J1
dHRvbl9ob3RwbHVnIGV4dDQgbWJjYWNoZSBqYmQyIHVzYmNvcmUgbmxzX2Jhc2UgCj4+Pj4+Pj4g
dXNiX2NvbW1vbiBwdHAgcHBzX2NvcmUgbWlpIGFlYWQgY3J5cHRvX251bGwgY3J5cHRvbWdyIGNy
YzMyY19nZW5lcmljIGNyeXB0b19oYXNoCj4+Pj4+Pj4gW8KgwqAgMzAuNDQ4MDE3XSBDUFU6IDAg
UElEOiAxNTc4IENvbW06IHdwYV9zdXBwbGljYW50IE5vdCB0YWludGVkIDQuMTQuMTI5ICMwCj4+
Pj4+Pgo+Pj4+Pj4gUGxlYXNlIGxvb2sgaW4geW91ciBjb2RlIGFuZCBsZXQgbWUga25vdyB0aGUg
c291cmNlIGFyb3VuZCB0aGUgbGluZSBpbiBtYWMuYyAoNjU2MykgdGhhdCBpcyBzcGxhdHRpbmcu
Cj4+Pj4+Pgo+Pj4+Pj4gQWxzbywgeW91IG1pZ2h0IGdyYWIgdGhlIGxhdGVzdCBhdGgxMGstY3Qg
cmVwbywgaXQgaGFzIGEgdHdlYWsgdGhhdCBtaWdodCBmaXggdGhlIFNXQkEgb3ZlcnJ1bgo+Pj4+
Pj4gbWVzc2FnZXMuCj4+Pj4+Pgo+Pj4+Pj4gaHR0cHM6Ly9naXRodWIuY29tL2dyZWVhcmIvYXRo
MTBrLWN0Cj4+Pj4+Pgo+Pj4+Pj4gVGhhbmtzLAo+Pj4+Pj4gQmVuCj4+Pj4+Pgo+Pj4+PiBIaSBC
ZW4sCj4+Pj4+Cj4+Pj4+IEhlcmUgaXMgdGhlIG91dHB1dCBiYXNlZCBvbiB0aGUgbGF0ZXN0IGdp
dCBIRUFEIG9mIHlvdXIgY3QgdHJlZSwgY29tYmluZWQgd2l0aCB0aGUgdGVzdCBmaXJtd2FyZToK
Pj4+Pj4KPj4+Pj4gaHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3L2t3QzZjMThKCj4+Pj4KPj4+PiBI
ZWxsbywKPj4+Pgo+Pj4+IFRoZSBzcGxhdCBkZWNvZGUgZG9lcyBub3QgbWF0Y2ggdGhlIHNvdXJj
ZSBjb2RlLCBzbyBJJ20gbm90IHdoaWNoIGlzIGNvcnJlY3QuCj4+Pj4KPj4+IE9wZW5XcnQgc2Vl
bXMgdG8gYWRkIGN1c3RvbSBwYXRjaGVzIHRvIHlvdXIgc291cmNlLgo+Pj4KPj4+IFBsZWFzZSBm
aW5kIHRoZSBjb21wbGV0ZSBzb3VyY2UgaW4gc3Vic2VxdWVudCBtYWlsIGFzIGJlaW5nIGJ1aWxk
Lgo+Pgo+PiBJIGRpZCBsb29rIGluIHRoYXQgY29kZSwgYW5kIHRoYXQgaXMgd2hlcmUgSSBzYXcg
dGhlIG1pc21hdGNoLiBQbGVhc2UgY2hlY2sgeW91ciBvd24gbG9jYWwgc3lzdGVtCj4+IGFuZCBz
ZWUgaWYgdGhlIHNwbGF0IG1hdGNoZXMgeW91ciBjb2RlP8KgIE1heWJlIEkgbWFkZSBzb21lIG1p
c3Rha2Ugb2YgY291cnNlLi4uCj4+Cj4+IFlvdSBjYW4gcGFzdGUgfjIwIGxpbmVzIG9mIGNvZGUg
YXJvdW5kIHRoZSBwcm9wZXIgc3BsYXQgbGluZSBhbmQgdGhlbiBJIGNhbiBmaW5kIGl0IGluIG15
Cj4+IHNvdXJjZS4uLgo+Pgo+PiBUaGFua3MsCj4+IEJlbgo+Pgo+Pgo+IEhpIEJlbiwKPiAKPiBK
dXN0IHJldHJpZWQgYWdhaW4gb24gYSBzbGlnaHRseSBvbGRlciBjb21taXQgKDIwMTktMDUtMDgp
IGFuZCB0aGUgc3BsYXQgcG9pbnRzIHRvIGFub3RoZXIgbG9jYXRpb24gbm93Lgo+IFdoZW4gbG9v
a2luZyBpdCB1cCwgaXQgYWdhaW4gcG9pbnRzIHRvIHRoZSBXQVJOX09OIHBvaW50ZWQgYmVsb3cg
Li4KPiAKPiBDaGVja2luZyBzaG93cyB0aGF0IGFsbCBjYWxscyB0byBhdGgxMGtfbWFjX3ZpZl9i
ZWFjb25fZnJlZSgpIGNhbGxzIGFyZSB3YXkgYWJvdmUgdGhpcyBsaW5lIChoaWdoZXN0IGxpbmUg
bnIgaXMgYXJvdW5kIGxpbmUxOTcwKQo+IEkgY3VycmVudGx5IGNhbid0IGV4cGxhaW4gd2hlcmUg
dGhlIG1pc21hdGNoIGNvbWVzIGZyb20gLi4KPiAKPiBDdXJyZW50IGJ1aWxkIGJlbG93IGlzIGp1
c3QgdGhlIGdpdCBIRUFEIG9mIG9wZW53cnQgMTkuMDcgYnJhbmNoLCBjbG9uZWQsIGJ1aWxkIGFu
ZCBmbGFzaGVkIHdpdGhvdXQgYW55IG1vZGlmaWNhdGlvbi4KPiAKPiAKPiBbwqDCoCAzMS45NTY3
NzRdIFdBUk5JTkc6IENQVTogMCBQSUQ6IDE3MjUgYXQgCj4gL21udC9yYW1kaXNrL2tvZW4vZmly
bXdhcmUvYnVpbGRzL2dlbmVyaWNfcmI5MjIvYnVpbGRfZGlyL3RhcmdldC1taXBzXzI0a2NfbXVz
bC9saW51eC1hcjcxeHhfbWlrcm90aWsvYXRoMTBrLWN0LTIwMTktMDUtMDgtZjk4YjZkYzQvYXRo
MTBrLTQuMTkvbWFjLmM6NjU2MyAKPiBhdGgxMGtfbWFjX3ZpZl9iZWFjb25fZnJlZSsweGM3Yy8w
eDExNWMgW2F0aDEwa19jb3JlXQo+IAo+IAo+IAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgcmV0ID0gYXRoMTBrX2NvbmZpZ19wcyhhcik7Cj4gIMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBpZiAocmV0KQo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGF0aDEwa193YXJuKGFyLCAiZmFpbGVkIHRvIHNldHVwIHBzIG9uIHZkZXYg
JWk6ICVkXG4iLAo+ICDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGFydmlmLT52ZGV2X2lkLCByZXQpOwo+ICDCoMKg
wqDCoMKgwqDCoCB9Cj4gCj4gIMKgwqDCoMKgwqDCoMKgIGlmIChjaGFuZ2VkICYgQlNTX0NIQU5H
RURfTUNBU1RfUkFURSAmJgo+IC0tLT7CoCDCoMKgwqDCoMKgwqDCoCAhV0FSTl9PTihhdGgxMGtf
bWFjX3ZpZl9jaGFuKGFydmlmLT52aWYsICZkZWYpKSkgewo+ICDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgYmFuZCA9IGRlZi5jaGFuLT5iYW5kOwoKSSB0aGluayB0aGlzIG1pZ2h0IG5v
dCBiZSB0byBzZXJpb3VzIG9mIGEgYnVnLCBhbmQgcHJvYmFibHkgZG9lcyBub3QgY2F1c2UgYW55
IHJlYWwKdHJvdWJsZS4KCkl0IGlzIGFsc28gcHJvYmFibHkgYSBidWcgaW4gbWFjODAyMTEgb3Ig
c2ltaWxhciwgYnV0IG5vdCBjZXJ0YWluIGFib3V0IHRoYXQuCgpUaGUgZ2VuZXJhbCBzZXQgb2Yg
YnVncyByZWxhdGVkIHRvIElCU1Mgc2VlbSB0byBiZSBpbmFiaWxpdHkgdG8gdHJhbnNtaXQgZnJh
bWVzCnNvbWV0aW1lcyAodGhvdWdoIGl0IHVzdWFsbHkgd29ya3Mgd2VsbCBpbiBteSBsYWIsIHNv
IEkgaGF2ZSBub3QgYmVlbiBhYmxlIHRvIHJlYWxseQpkZWJ1ZyBpdCkuCgpUaGUgc2ltcGxlciB0
aGUgdGVzdCBjYXNlLCB0aGUgYmV0dGVyLiAgU28sIGlmIHlvdSBjYW4gcmVwcm9kdWNlIHNvbWUg
cGFja2V0IHRyYW5zbWl0Cmlzc3VlLCBwcmVmZXJhYmx5OgoKMiBwZWVycwpzbG93IHNwZWVkIHRy
YWZmaWMKbm8gZW5jcnlwdGlvbgpubyBmdW5ueSByb3V0aW5nIChPTFNSLCBiYXRtYW4sIGV0YykK
ClBsZWFzZSBsZXQgbWUga25vdy4KCkFuZCwgaWYgeW91IGNhbm5vdCByZXByb2R1Y2UgaW4gdGhp
cyBzaW1wbGUgc2V0dXAsIHRoZW4gd2hhdAppcyB0aGUgdGhpbmcgY2xvc2VzdCB0byB0aGlzIHRo
YXQgZG9lcyBzaG93IHRoZSBpc3N1ZT8gIEkgY2FuIGJ1aWxkIGZpcm13YXJlIHdpdGgKdmVyYm9z
ZSB0eC1wYXRoIChhbmQgcngtcGF0aCwgZm9yIHRoYXQgbWF0dGVyKSBkZWJ1Z2dpbmcgYW5kIGxl
dCB5b3UgcnVuIGl0IGlmIHlvdSBjYW4KZmluZCBhIGdvb2QgdGVzdCBjYXNlLCBidXQgaXQgY2Fu
bm90IGdhdGhlciB1c2VmdWwgbG9ncyBhdCBoaWdoIHBhY2tldCB0cmFuc21pc3Npb24gcmF0ZXMu
CgpUaGFua3MsCkJlbgoKLS0gCkJlbiBHcmVlYXIgPGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPgpD
YW5kZWxhIFRlY2hub2xvZ2llcyBJbmMgIGh0dHA6Ly93d3cuY2FuZGVsYXRlY2guY29tCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZl
bCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xp
c3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
