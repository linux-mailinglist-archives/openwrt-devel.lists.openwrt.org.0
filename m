Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B7F556EF5
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 18:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ggAxIG5bDaK9NxzB9dzB+We2/Gg7ooNlsUKztWqT06o=; b=X2086RBzqeZGx2A7OgGy+JFWE
	Yf5mCGXLuw7mymZkE73/X2tLXfEGCMC9CW1biMqGTDDDUrh5F8Exkr/sik9rLdZgiMXZAY93x+hiL
	Wjdb/eWfckd/uWbwz6EA76IAXH6e76eQphI98kvMhP7QhS7LYZWBDqp/0+RUGk/So+JzJrUM1ybBm
	pEcohaLMhSSQPN8eey4KCeTjnAZsN5/iDRzRDwaKYd4DfLE4CFYn+Hf3k1nwsjBu5JHup4lUP+DsJ
	yEtIZhhhRv78gR0m+/AX8cmsuVPPSn9n6X0TqFXvBkbzpd9+w1qOwLVIb6vzlWKsm4kgeXl5T8am3
	+AV32DF4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgAxR-0007Zo-5O; Wed, 26 Jun 2019 16:39:41 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgAxE-0007Z9-Rk
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 16:39:30 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id D9A63137560;
 Wed, 26 Jun 2019 09:39:27 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com D9A63137560
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1561567167;
 bh=F8592XROAOWHIQAAzZB5A4JuOYsn+jGQ5D+ehyZCUqE=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=oLTM6IIeqzK/gpltsB1+0UMaD7GpDuns66te9eWCWARLmGlzwzmc4b7s4CsYgsCBj
 TG6viLgMVqD4wOy7JDc9OlrdphnrRVRW3KoLJ0sTqPp5MXosS9yenMZD19FNoz7gNz
 kHdDpz5OhYFP4LnFLMEqzky18YXepJg0n1bhxZkc=
To: Koen Vandeputte <koen.vandeputte@ncentric.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <abe6feb7-80a9-4587-db0b-7f3a37a792d8@ncentric.com>
 <7a68db11-1026-e576-2c26-425ea85ef609@candelatech.com>
 <93bc6089-e313-f51f-06e9-4c0b8f36f7e7@ncentric.com>
 <3d95432a-db21-d4ef-24c4-fc3659fee0a1@candelatech.com>
 <4248b808-d8a5-1972-f423-ba34e222abc2@ncentric.com>
 <a5605840-8a4b-21a5-1e48-86971bec6108@candelatech.com>
 <06abfe46-1815-fc36-db01-2cf24bdb734e@ncentric.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <4ca7aa93-1960-1373-7590-1d39c41d8768@candelatech.com>
Date: Wed, 26 Jun 2019 09:39:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <06abfe46-1815-fc36-db01-2cf24bdb734e@ncentric.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_093928_975491_16A13D02 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

T24gNi8yNi8xOSA5OjI4IEFNLCBLb2VuIFZhbmRlcHV0dGUgd3JvdGU6Cj4gCj4gT24gMjYuMDYu
MTkgMTg6MTYsIEJlbiBHcmVlYXIgd3JvdGU6Cj4+IE9uIDYvMjYvMTkgMjowMiBBTSwgS29lbiBW
YW5kZXB1dHRlIHdyb3RlOgo+Pj4KPj4+IE9uIDI1LjA2LjE5IDE1OjU0LCBCZW4gR3JlZWFyIHdy
b3RlOgo+Pj4+Cj4+Pj4KPj4+PiBPbiAwNi8yNS8yMDE5IDAyOjUzIEFNLCBLb2VuIFZhbmRlcHV0
dGUgd3JvdGU6Cj4+Pj4+Cj4+Pj4+IE9uIDI0LjA2LjE5IDIyOjA0LCBCZW4gR3JlZWFyIHdyb3Rl
Ogo+Pj4+Pj4gT24gNi8yNC8xOSA4OjMyIEFNLCBLb2VuIFZhbmRlcHV0dGUgd3JvdGU6Cj4+Pj4+
Pj4gSGkgQmVuLAo+Pj4+Pj4+IEhpIEFsbCwKPj4+Pj4+Pgo+Pj4+Pj4+IFNvIEknbSBnb2luZyB0
byBnaXZlIHRoaXMgYW5vdGhlciB0cnkgLi4KPj4+Pj4+PiBBcyB0aGUgSUJTUyBmdW5jdGlvbmFs
aXR5IGlzIGhlYXZpbHkgYWR2ZXJ0aXNlZCBhcyBhIGRlbHRhIHRvIG1haW5saW5lLCBpdCB3b3Vs
ZCBiZSB2ZXJ5IG5pY2UgdG8gZ2V0IGl0IHdvcmtpbmcgYWxzbyA6KQo+Pj4+Pj4+Cj4+Pj4+Pj4g
VGVzdGluZyB0aGUgbGF0ZXN0IGF0aDEway1jdCBkcml2ZXIgYW5kIGZpcm13YXJlIHNlZW1zIHRv
IGJlIGEgc3RlcCBiYWNrIGNvbXBhcmVkIHRvIHJvdWdobHkgYSBtb250aCBhZ28uCj4+Pj4+Pj4K
Pj4+Pj4+PiBJJ20gY3VycmVudGx5IHNlZWluZyB0aGUgZmlybXdhcmUgY3Jhc2hpbmcsIHdoaWNo
IHdhcyBub3QgdGhlIGNhc2UgYmVmb3JlOgo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+PiBhdGgxMGst
Y3QgKyBodHQtZnc6Cj4+Pj4+Pj4KPj4+Pj4+PiBodHRwczovL3Bhc3RlYmluLmNvbS9yYXcvN1N5
OXl4NnMKPj4+Pj4+Cj4+Pj4+PiBMb29rcyBsaWtlIGZpcm13YXJlIHJhbiBvdXQgb2Ygc29tZSBX
TUkgZXZlbnQgYnVmZmVycyBhbmQgY3Jhc2hlZCBpbnN0ZWFkIG9mIGhhbmRsaW5nCj4+Pj4+PiBp
dCBtb3JlIGdyYWNlZnVsbHkuCj4+Pj4+Pgo+Pj4+Pj4gUGxlYXNlIHRyeSB0aGUgYXR0YWNoZWQg
KHVudGVzdGVkKSBmaXJtd2FyZSBhbmQgc2VlIGlmIGl0IGJlaGF2ZXMgYmV0dGVyLgo+Pj4+Pj4K
Pj4+Pj4gSGkgQmVuLAo+Pj4+Pgo+Pj4+PiAxIHN0ZXAgZm9yd2FyZCBoZXJlLgo+Pj4+Pgo+Pj4+
PiBJJ20gbm90IHNlZWluZyBjcmFzaGVzIGFueW1vcmUgdXNpbmcgdGhlIHRlc3QtZmlybXdhcmUu
Cj4+Pj4+Cj4+Pj4+IGh0dHBzOi8vcGFzdGViaW4uY29tL3Jhdy80WmVYdTdpdwo+Pj4+Pgo+Pj4+
Pgo+Pj4+PiBJJ3ZlIGxpbmtlZCB1cCAyIElCU1MgZGV2aWNlcyAod2F2ZSAxLCBWSFQ4MCkKPj4+
Pj4KPj4+Pj4gT0xTUiB0cmFmZmljIChVRFApIHdvcmtzIGFuZCBwYWNrZXRzIGhlcmUgYXJlIG5p
Y2VseSBnb2luZyBiYWNrICYgZm9ydGguCj4+Pj4+Cj4+Pj4+IFNpbXBseSBwaW5naW5nIChJQ01Q
KSBiZXR3ZWVuIHRoZSAyIGRldmljZXMgZG9lcyBub3Qgd29yay4KPj4+Pj4KPj4+Pj4gV2hlbiBz
ZW5kaW5nIDEwMCBwaW5ncywgKDY0IGJ5dGUgbGFyZ2UpwqAgc29tZXRpbWVzIDEgZ2V0cyB0aHJv
dWdoIC4uIGJ1dCB3aXRoIGEgbGF0ZW5jeSBvZiA+IDUwMG1zCj4+Pj4+Cj4+Pj4+Cj4+Pj4+IEkg
dGhpbmsgaWYgdGhlIHNwbGF0IGFuZCB0aGUgYmVhY29uIHNwYW0gYmVsb3cgY291bGQgYmUgZml4
ZWQgLi4gdGhpcyB3b3VsZCBiZSBhIG1ham9yIHN0ZXAgZm9yd2FyZDoKPj4+Pj4KPj4+Pj4gW8Kg
wqAgMzAuMzI4NDIzXSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KPj4+Pj4g
W8KgwqAgMzAuMzMzMjUxXSBXQVJOSU5HOiBDUFU6IDAgUElEOiAxNTc4IGF0IAo+Pj4+PiAvbW50
L3JhbWRpc2sva29lbi9maXJtd2FyZS9idWlsZHMvZ2VuZXJpY19yYjkyMi9idWlsZF9kaXIvdGFy
Z2V0LW1pcHNfMjRrY19tdXNsL2xpbnV4LWFyNzF4eF9taWtyb3Rpay9hdGgxMGstY3QtMjAxOS0w
NS0wOC1mOThiNmRjNC9hdGgxMGstNC4xOS9tYWMuYzo2NTYzIAo+Pj4+PiBhdGgxMGtfbWFjX3Zp
Zl9iZWFjb25fZnJlZSsweGM3Yy8weDExNWMgW2F0aDEwa19jb3JlXQo+Pj4+PiBbwqDCoCAzMC4z
NTU2MzZdIE1vZHVsZXMgbGlua2VkIGluOiBtYnQgYXRoOWsgYXRoOWtfY29tbW9uIHFjc2VyaWFs
IHBwcG9lIHBwcF9hc3luYyBvcHRpb24gY2RjX21iaW0gYXRoOWtfaHcgYXRoMTBrX3BjaSBhdGgx
MGtfY29yZSBhdGggdXNiX3d3YW4gc2llcnJhX25ldCAKPj4+Pj4gc2llcnJhIHJuZGlzX2hvc3Qg
cW1pX3d3YW4gcHBwb3ggcHBwX2dlbmVyaWMgbWFjODAyMTEgaXB0YWJsZV9uYXQgaXB0YWJsZV9t
YW5nbGUgaXB0YWJsZV9maWx0ZXIgaXB0X1JFSkVDVCBpcHRfTUFTUVVFUkFERSBpcF90YWJsZXMg
aHVhd2VpX2NkY19uY20gZnRkaV9zaW8gCj4+Pj4+IGNmZzgwMjExIGNkY19zdWJzZXQgY2RjX25j
bSBjZGNfZXRoZXIgeHRfdGltZSB4dF90Y3B1ZHAgeHRfc3RhdGUgeHRfbmF0IHh0X211bHRpcG9y
dCB4dF9tYXJrIHh0X21hYyB4dF9saW10Cj4+Pj4+IFvCoMKgIDMwLjQyNzMzMV3CoCBubHNfdXRm
OCBubHNfaXNvODg1OV8xIG5sc19jcDQzNyBhdXRoZW5jIGVoY2lfcGxhdGZvcm0gc2RfbW9kIHNj
c2lfbW9kIGVoY2lfaGNkIGdwaW9fYnV0dG9uX2hvdHBsdWcgZXh0NCBtYmNhY2hlIGpiZDIgdXNi
Y29yZSBubHNfYmFzZSAKPj4+Pj4gdXNiX2NvbW1vbiBwdHAgcHBzX2NvcmUgbWlpIGFlYWQgY3J5
cHRvX251bGwgY3J5cHRvbWdyIGNyYzMyY19nZW5lcmljIGNyeXB0b19oYXNoCj4+Pj4+IFvCoMKg
IDMwLjQ0ODAxN10gQ1BVOiAwIFBJRDogMTU3OCBDb21tOiB3cGFfc3VwcGxpY2FudCBOb3QgdGFp
bnRlZCA0LjE0LjEyOSAjMAo+Pj4+Cj4+Pj4gUGxlYXNlIGxvb2sgaW4geW91ciBjb2RlIGFuZCBs
ZXQgbWUga25vdyB0aGUgc291cmNlIGFyb3VuZCB0aGUgbGluZSBpbiBtYWMuYyAoNjU2MykgdGhh
dCBpcyBzcGxhdHRpbmcuCj4+Pj4KPj4+PiBBbHNvLCB5b3UgbWlnaHQgZ3JhYiB0aGUgbGF0ZXN0
IGF0aDEway1jdCByZXBvLCBpdCBoYXMgYSB0d2VhayB0aGF0IG1pZ2h0IGZpeCB0aGUgU1dCQSBv
dmVycnVuCj4+Pj4gbWVzc2FnZXMuCj4+Pj4KPj4+PiBodHRwczovL2dpdGh1Yi5jb20vZ3JlZWFy
Yi9hdGgxMGstY3QKPj4+Pgo+Pj4+IFRoYW5rcywKPj4+PiBCZW4KPj4+Pgo+Pj4gSGkgQmVuLAo+
Pj4KPj4+IEhlcmUgaXMgdGhlIG91dHB1dCBiYXNlZCBvbiB0aGUgbGF0ZXN0IGdpdCBIRUFEIG9m
IHlvdXIgY3QgdHJlZSwgY29tYmluZWQgd2l0aCB0aGUgdGVzdCBmaXJtd2FyZToKPj4+Cj4+PiBo
dHRwczovL3Bhc3RlYmluLmNvbS9yYXcva3dDNmMxOEoKPj4KPj4gSGVsbG8sCj4+Cj4+IFRoZSBz
cGxhdCBkZWNvZGUgZG9lcyBub3QgbWF0Y2ggdGhlIHNvdXJjZSBjb2RlLCBzbyBJJ20gbm90IHdo
aWNoIGlzIGNvcnJlY3QuCj4+Cj4gT3BlbldydCBzZWVtcyB0byBhZGQgY3VzdG9tIHBhdGNoZXMg
dG8geW91ciBzb3VyY2UuCj4gCj4gUGxlYXNlIGZpbmQgdGhlIGNvbXBsZXRlIHNvdXJjZSBpbiBz
dWJzZXF1ZW50IG1haWwgYXMgYmVpbmcgYnVpbGQuCgpJIGRpZCBsb29rIGluIHRoYXQgY29kZSwg
YW5kIHRoYXQgaXMgd2hlcmUgSSBzYXcgdGhlIG1pc21hdGNoLiAgUGxlYXNlIGNoZWNrIHlvdXIg
b3duIGxvY2FsIHN5c3RlbQphbmQgc2VlIGlmIHRoZSBzcGxhdCBtYXRjaGVzIHlvdXIgY29kZT8g
IE1heWJlIEkgbWFkZSBzb21lIG1pc3Rha2Ugb2YgY291cnNlLi4uCgpZb3UgY2FuIHBhc3RlIH4y
MCBsaW5lcyBvZiBjb2RlIGFyb3VuZCB0aGUgcHJvcGVyIHNwbGF0IGxpbmUgYW5kIHRoZW4gSSBj
YW4gZmluZCBpdCBpbiBteQpzb3VyY2UuLi4KClRoYW5rcywKQmVuCgoKLS0gCkJlbiBHcmVlYXIg
PGdyZWVhcmJAY2FuZGVsYXRlY2guY29tPgpDYW5kZWxhIFRlY2hub2xvZ2llcyBJbmMgIGh0dHA6
Ly93d3cuY2FuZGVsYXRlY2guY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
