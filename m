Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E413356E8C
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 18:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2As5bgLZZn6R4zFAf24GQ/LVGp0zbg/I2/i015j6vFk=; b=Cq+JiHPdxiJx1TPUFl/6O9Mbs
	4ri+T4xD+bmjzpZAK5QO4FxCnkim39kR3KMYrAnG2sNwRilgrRiI30yjm72LgsD6/T9oH4RAqIQJ9
	5UA1m9wmJnYV/sutmrZEekkLYhbI9Sr88A/2EP+VgX686qSzhLaF9Hxm9grh1r7af4GkfcGxlxUYC
	cjalb1S1wUTy/pO/jSwgeI+/CunfNNcUWFOsqueacBMdIkmAfj8+5jI6ZAsIu5g2tcxxkh8FcZFha
	JgPkqMnVBoolCiuMUIctbHVc0i9ECMDMBzCLl/PlXxoAtac0S8UxqmSkx3t6kpAR2Ag9eZrd5ChIH
	lcoIHqhAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgAb7-0006zb-A2; Wed, 26 Jun 2019 16:16:37 +0000
Received: from mail2.candelatech.com ([208.74.158.173]
 helo=mail3.candelatech.com)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgAay-0006yi-3H
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 16:16:29 +0000
Received: from [192.168.100.195] (50-251-239-81-static.hfc.comcastbusiness.net
 [50.251.239.81])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail3.candelatech.com (Postfix) with ESMTPSA id CEC15137560;
 Wed, 26 Jun 2019 09:16:26 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail3.candelatech.com CEC15137560
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=candelatech.com;
 s=default; t=1561565786;
 bh=lrIep8AEdIUaP+B9YwEk2OeRMuX2LEtu15heAFOsVYQ=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=Rlw3SJgOe/XwVdSc9BdceQ9k8+TdYVOC1jwzWyY1wF+6QmP2OfdvM0h5d+3xYScex
 kMBG2YqO58SuJl7TE3kI5dxBYTKFdwdGItlBcbcBrrYhNLzQphOYuXKtL58EUKI9ER
 50mQF8UrgN9/EK3CdV6hTOC/Ah/n94+8ObimFhf0=
To: Koen Vandeputte <koen.vandeputte@ncentric.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <abe6feb7-80a9-4587-db0b-7f3a37a792d8@ncentric.com>
 <7a68db11-1026-e576-2c26-425ea85ef609@candelatech.com>
 <93bc6089-e313-f51f-06e9-4c0b8f36f7e7@ncentric.com>
 <3d95432a-db21-d4ef-24c4-fc3659fee0a1@candelatech.com>
 <4248b808-d8a5-1972-f423-ba34e222abc2@ncentric.com>
From: Ben Greear <greearb@candelatech.com>
Organization: Candela Technologies
Message-ID: <a5605840-8a4b-21a5-1e48-86971bec6108@candelatech.com>
Date: Wed, 26 Jun 2019 09:16:26 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <4248b808-d8a5-1972-f423-ba34e222abc2@ncentric.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_091628_215943_4A14B982 
X-CRM114-Status: GOOD (  20.68  )
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

T24gNi8yNi8xOSAyOjAyIEFNLCBLb2VuIFZhbmRlcHV0dGUgd3JvdGU6Cj4gCj4gT24gMjUuMDYu
MTkgMTU6NTQsIEJlbiBHcmVlYXIgd3JvdGU6Cj4+Cj4+Cj4+IE9uIDA2LzI1LzIwMTkgMDI6NTMg
QU0sIEtvZW4gVmFuZGVwdXR0ZSB3cm90ZToKPj4+Cj4+PiBPbiAyNC4wNi4xOSAyMjowNCwgQmVu
IEdyZWVhciB3cm90ZToKPj4+PiBPbiA2LzI0LzE5IDg6MzIgQU0sIEtvZW4gVmFuZGVwdXR0ZSB3
cm90ZToKPj4+Pj4gSGkgQmVuLAo+Pj4+PiBIaSBBbGwsCj4+Pj4+Cj4+Pj4+IFNvIEknbSBnb2lu
ZyB0byBnaXZlIHRoaXMgYW5vdGhlciB0cnkgLi4KPj4+Pj4gQXMgdGhlIElCU1MgZnVuY3Rpb25h
bGl0eSBpcyBoZWF2aWx5IGFkdmVydGlzZWQgYXMgYSBkZWx0YSB0byBtYWlubGluZSwgaXQgd291
bGQgYmUgdmVyeSBuaWNlIHRvIGdldCBpdCB3b3JraW5nIGFsc28gOikKPj4+Pj4KPj4+Pj4gVGVz
dGluZyB0aGUgbGF0ZXN0IGF0aDEway1jdCBkcml2ZXIgYW5kIGZpcm13YXJlIHNlZW1zIHRvIGJl
IGEgc3RlcCBiYWNrIGNvbXBhcmVkIHRvIHJvdWdobHkgYSBtb250aCBhZ28uCj4+Pj4+Cj4+Pj4+
IEknbSBjdXJyZW50bHkgc2VlaW5nIHRoZSBmaXJtd2FyZSBjcmFzaGluZywgd2hpY2ggd2FzIG5v
dCB0aGUgY2FzZSBiZWZvcmU6Cj4+Pj4+Cj4+Pj4+Cj4+Pj4+IGF0aDEway1jdCArIGh0dC1mdzoK
Pj4+Pj4KPj4+Pj4gaHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3LzdTeTl5eDZzCj4+Pj4KPj4+PiBM
b29rcyBsaWtlIGZpcm13YXJlIHJhbiBvdXQgb2Ygc29tZSBXTUkgZXZlbnQgYnVmZmVycyBhbmQg
Y3Jhc2hlZCBpbnN0ZWFkIG9mIGhhbmRsaW5nCj4+Pj4gaXQgbW9yZSBncmFjZWZ1bGx5Lgo+Pj4+
Cj4+Pj4gUGxlYXNlIHRyeSB0aGUgYXR0YWNoZWQgKHVudGVzdGVkKSBmaXJtd2FyZSBhbmQgc2Vl
IGlmIGl0IGJlaGF2ZXMgYmV0dGVyLgo+Pj4+Cj4+PiBIaSBCZW4sCj4+Pgo+Pj4gMSBzdGVwIGZv
cndhcmQgaGVyZS4KPj4+Cj4+PiBJJ20gbm90IHNlZWluZyBjcmFzaGVzIGFueW1vcmUgdXNpbmcg
dGhlIHRlc3QtZmlybXdhcmUuCj4+Pgo+Pj4gaHR0cHM6Ly9wYXN0ZWJpbi5jb20vcmF3LzRaZVh1
N2l3Cj4+Pgo+Pj4KPj4+IEkndmUgbGlua2VkIHVwIDIgSUJTUyBkZXZpY2VzICh3YXZlIDEsIFZI
VDgwKQo+Pj4KPj4+IE9MU1IgdHJhZmZpYyAoVURQKSB3b3JrcyBhbmQgcGFja2V0cyBoZXJlIGFy
ZSBuaWNlbHkgZ29pbmcgYmFjayAmIGZvcnRoLgo+Pj4KPj4+IFNpbXBseSBwaW5naW5nIChJQ01Q
KSBiZXR3ZWVuIHRoZSAyIGRldmljZXMgZG9lcyBub3Qgd29yay4KPj4+Cj4+PiBXaGVuIHNlbmRp
bmcgMTAwIHBpbmdzLCAoNjQgYnl0ZSBsYXJnZSnCoCBzb21ldGltZXMgMSBnZXRzIHRocm91Z2gg
Li4gYnV0IHdpdGggYSBsYXRlbmN5IG9mID4gNTAwbXMKPj4+Cj4+Pgo+Pj4gSSB0aGluayBpZiB0
aGUgc3BsYXQgYW5kIHRoZSBiZWFjb24gc3BhbSBiZWxvdyBjb3VsZCBiZSBmaXhlZCAuLiB0aGlz
IHdvdWxkIGJlIGEgbWFqb3Igc3RlcCBmb3J3YXJkOgo+Pj4KPj4+IFvCoMKgIDMwLjMyODQyM10g
LS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4+PiBbwqDCoCAzMC4zMzMyNTFd
IFdBUk5JTkc6IENQVTogMCBQSUQ6IDE1NzggYXQgCj4+PiAvbW50L3JhbWRpc2sva29lbi9maXJt
d2FyZS9idWlsZHMvZ2VuZXJpY19yYjkyMi9idWlsZF9kaXIvdGFyZ2V0LW1pcHNfMjRrY19tdXNs
L2xpbnV4LWFyNzF4eF9taWtyb3Rpay9hdGgxMGstY3QtMjAxOS0wNS0wOC1mOThiNmRjNC9hdGgx
MGstNC4xOS9tYWMuYzo2NTYzIAo+Pj4gYXRoMTBrX21hY192aWZfYmVhY29uX2ZyZWUrMHhjN2Mv
MHgxMTVjIFthdGgxMGtfY29yZV0KPj4+IFvCoMKgIDMwLjM1NTYzNl0gTW9kdWxlcyBsaW5rZWQg
aW46IG1idCBhdGg5ayBhdGg5a19jb21tb24gcWNzZXJpYWwgcHBwb2UgcHBwX2FzeW5jIG9wdGlv
biBjZGNfbWJpbSBhdGg5a19odyBhdGgxMGtfcGNpIGF0aDEwa19jb3JlIGF0aCB1c2Jfd3dhbiBz
aWVycmFfbmV0IAo+Pj4gc2llcnJhIHJuZGlzX2hvc3QgcW1pX3d3YW4gcHBwb3ggcHBwX2dlbmVy
aWMgbWFjODAyMTEgaXB0YWJsZV9uYXQgaXB0YWJsZV9tYW5nbGUgaXB0YWJsZV9maWx0ZXIgaXB0
X1JFSkVDVCBpcHRfTUFTUVVFUkFERSBpcF90YWJsZXMgaHVhd2VpX2NkY19uY20gZnRkaV9zaW8g
Cj4+PiBjZmc4MDIxMSBjZGNfc3Vic2V0IGNkY19uY20gY2RjX2V0aGVyIHh0X3RpbWUgeHRfdGNw
dWRwIHh0X3N0YXRlIHh0X25hdCB4dF9tdWx0aXBvcnQgeHRfbWFyayB4dF9tYWMgeHRfbGltdAo+
Pj4gW8KgwqAgMzAuNDI3MzMxXcKgIG5sc191dGY4IG5sc19pc284ODU5XzEgbmxzX2NwNDM3IGF1
dGhlbmMgZWhjaV9wbGF0Zm9ybSBzZF9tb2Qgc2NzaV9tb2QgZWhjaV9oY2QgZ3Bpb19idXR0b25f
aG90cGx1ZyBleHQ0IG1iY2FjaGUgamJkMiB1c2Jjb3JlIG5sc19iYXNlIAo+Pj4gdXNiX2NvbW1v
biBwdHAgcHBzX2NvcmUgbWlpIGFlYWQgY3J5cHRvX251bGwgY3J5cHRvbWdyIGNyYzMyY19nZW5l
cmljIGNyeXB0b19oYXNoCj4+PiBbwqDCoCAzMC40NDgwMTddIENQVTogMCBQSUQ6IDE1NzggQ29t
bTogd3BhX3N1cHBsaWNhbnQgTm90IHRhaW50ZWQgNC4xNC4xMjkgIzAKPj4KPj4gUGxlYXNlIGxv
b2sgaW4geW91ciBjb2RlIGFuZCBsZXQgbWUga25vdyB0aGUgc291cmNlIGFyb3VuZCB0aGUgbGlu
ZSBpbiBtYWMuYyAoNjU2MykgdGhhdCBpcyBzcGxhdHRpbmcuCj4+Cj4+IEFsc28sIHlvdSBtaWdo
dCBncmFiIHRoZSBsYXRlc3QgYXRoMTBrLWN0IHJlcG8sIGl0IGhhcyBhIHR3ZWFrIHRoYXQgbWln
aHQgZml4IHRoZSBTV0JBIG92ZXJydW4KPj4gbWVzc2FnZXMuCj4+Cj4+IGh0dHBzOi8vZ2l0aHVi
LmNvbS9ncmVlYXJiL2F0aDEway1jdAo+Pgo+PiBUaGFua3MsCj4+IEJlbgo+Pgo+IEhpIEJlbiwK
PiAKPiBIZXJlIGlzIHRoZSBvdXRwdXQgYmFzZWQgb24gdGhlIGxhdGVzdCBnaXQgSEVBRCBvZiB5
b3VyIGN0IHRyZWUsIGNvbWJpbmVkIHdpdGggdGhlIHRlc3QgZmlybXdhcmU6Cj4gCj4gaHR0cHM6
Ly9wYXN0ZWJpbi5jb20vcmF3L2t3QzZjMThKCgpIZWxsbywKClRoZSBzcGxhdCBkZWNvZGUgZG9l
cyBub3QgbWF0Y2ggdGhlIHNvdXJjZSBjb2RlLCBzbyBJJ20gbm90IHdoaWNoIGlzIGNvcnJlY3Qu
CgpbICAgMzIuMzQxMDc3XSAtLS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KWyAg
IDMyLjM0NTg5OF0gV0FSTklORzogQ1BVOiAwIFBJRDogMTQ3MCBhdCAKL21udC9yYW1kaXNrL2tv
ZW4vZmlybXdhcmUvYnVpbGRzL2dlbmVyaWNfcmI5MjIvYnVpbGRfZGlyL3RhcmdldC1taXBzXzI0
a2NfbXVzbC9saW51eC1hcjcxeHhfbWlrcm90aWsvYXRoMTBrLWN0LTIwMTktMDYtMTMtZjBhYTgx
MzAvYXRoMTBrLTQuMTkvbWFjLmM6NjU4MSAKYXRoMTBrX21hY192aWZfYmVhY29uX2ZyZWUrMHhj
NTQvMHgxMTJjIFthdGgxMGtfY29yZV0KCihsaW5lIDY1ODEgaXMgbm90IGluIHRoZSBtYWNfdmlm
X2JlYWNvbl9mcmVlIG1ldGhvZCkuCgpBbHNvLCBwbGVhc2UgZW5hYmxlIHRoZSBmaXJtd2FyZSBE
QkdMT0cgbG9nZ2luZyBwZXIgaW5zdHJ1Y3Rpb25zIGhlcmU6CgpodHRwOi8vd3d3LmNhbmRlbGF0
ZWNoLmNvbS9hdGgxMGstYnVncy5waHAKClRoaXMgaXMgdGhlIHN1Z2dlc3RlZCBsZXZlbCB0byBk
ZWJ1ZyBhdDogIDB4YzAwMDAwMzIKClRoYW5rcywKQmVuCgoKLS0gCkJlbiBHcmVlYXIgPGdyZWVh
cmJAY2FuZGVsYXRlY2guY29tPgpDYW5kZWxhIFRlY2hub2xvZ2llcyBJbmMgIGh0dHA6Ly93d3cu
Y2FuZGVsYXRlY2guY29tCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
