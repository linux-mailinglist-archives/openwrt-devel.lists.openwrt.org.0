Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9975156EC0
	for <lists+openwrt-devel@lfdr.de>; Wed, 26 Jun 2019 18:29:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sJGkSh23GrU/Ob7L9FiWAzG8It7jUNHAoUXtdfa4w0o=; b=arp2w9qK1iJgsU47nhDTEB5vZ
	U11cWmHxHhNMPUfQRFnwDshZAmccLLEKbBiOisu/nRhmNrJ34han/ORD3aWSfMb6o8mw5l9Q8JwVC
	/h9hp6yJ6zxTFQPdEPU0cQfzY8G3dBpScCJM5W7BDu5fw5VQceIlXioYjMtqOTE7AdqiAIoxMlp6i
	H9ZugcDiQXPGmuCEfVE80b9sGPUpSqOm0LUusq0P++K6ewtc4xDNd/UMoGpFV8jR4WUm3jz+a1VRF
	luKZEg1Af/nsqWtXkanvIB2DGMGCYqN2M8XVXO/KfPDkbDF5EmrX7UtyvGm2CNIclsAGe+AwAs7ka
	F1RoitQXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgAn0-0002mg-VU; Wed, 26 Jun 2019 16:28:54 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgAmd-0002m6-1e
 for openwrt-devel@lists.openwrt.org; Wed, 26 Jun 2019 16:28:32 +0000
Received: by mail-ed1-x542.google.com with SMTP id k8so4105802edr.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 26 Jun 2019 09:28:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=y18NTHQRGdPwbWab23Ezd4+GPyQ1Iev7hcVlKf4sTGU=;
 b=wYlskqvvSTnfRxbgoyHe4YWsKheqYnqLTgoaKkS8Mr6wnB8TSQvtJRmYZGbSeLNhZ9
 BXp5DlSfA5PjwGTU1EN/yBCaCg3aW79whCzu0XLoI7KKjotd0P77odj0v99lAm4DQ40c
 AXpjyI6vcZE+aZW+da4HHFnOksN8ZdnSomEMIpO+31QtrSGJt+mu7YT/CcT0CPUcfX2Z
 Xfhue+s726aKcftpTpgz/zYRLScXNyO+VefJXfqtBISJPiI7MZi5y1/OWvcWMKQv5vyd
 1KRAkxJnEbudFqxLhlz1uNKhBWJz7Htivaxs10pzjCk8gJMqzzESuAO9cM1K5ZB8zoD0
 B2Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=y18NTHQRGdPwbWab23Ezd4+GPyQ1Iev7hcVlKf4sTGU=;
 b=CPx6aN5ZBUU8pd9f3NLEtLq+gNmMQxmX/jW1V2dUkBzoUthUMNDf7zkFDFfLMI4YIT
 YIWlmPEFsGn/964N+6riGU4JWn0qXV9U/oGlRVIt0o5fvhKxO60I4GR0Vj6K65dMnvJs
 c4cCzswLBQ6IiafXKImp/MozdYVECc1Cx2iPq4OFkdMeb8FwSZzNDqfQeT8eDGWQdGa4
 MuLcYcz4t6gjn9Ni2KKWu24yqRN+mkGEGtpHPSzhwqHjT/qWXU37dqb4tWWdHXfa9ZcT
 Qlct2mBdtRIK/qockZzou3WvQ/ZJg/C/XF4Z1Xg/r/y5DhTcR+vdhUOUQNACLL+37idf
 pIsg==
X-Gm-Message-State: APjAAAWtfDRTmDr7/kc9qX2RtDyMZcjlswBdqXMb1FdtD05yo5z2aEYs
 HyKtSpRoEUnnzN8q/QjW8H9D40Et4UuDIg==
X-Google-Smtp-Source: APXvYqw9o8GUXPhpxBfMqBvWcYPmTn0qkqjvvi2ZTMjzj+oPbg7FxMDvyfZ+Cf1ZNcHk37K2QXA7AA==
X-Received: by 2002:a50:86ea:: with SMTP id 39mr6439716edu.184.1561566508866; 
 Wed, 26 Jun 2019 09:28:28 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id w11sm3022255ejk.63.2019.06.26.09.28.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 09:28:28 -0700 (PDT)
To: Ben Greear <greearb@candelatech.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <abe6feb7-80a9-4587-db0b-7f3a37a792d8@ncentric.com>
 <7a68db11-1026-e576-2c26-425ea85ef609@candelatech.com>
 <93bc6089-e313-f51f-06e9-4c0b8f36f7e7@ncentric.com>
 <3d95432a-db21-d4ef-24c4-fc3659fee0a1@candelatech.com>
 <4248b808-d8a5-1972-f423-ba34e222abc2@ncentric.com>
 <a5605840-8a4b-21a5-1e48-86971bec6108@candelatech.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <06abfe46-1815-fc36-db01-2cf24bdb734e@ncentric.com>
Date: Wed, 26 Jun 2019 18:28:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <a5605840-8a4b-21a5-1e48-86971bec6108@candelatech.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_092831_113220_B01A889D 
X-CRM114-Status: GOOD (  23.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Ck9uIDI2LjA2LjE5IDE4OjE2LCBCZW4gR3JlZWFyIHdyb3RlOgo+IE9uIDYvMjYvMTkgMjowMiBB
TSwgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+Pgo+PiBPbiAyNS4wNi4xOSAxNTo1NCwgQmVuIEdy
ZWVhciB3cm90ZToKPj4+Cj4+Pgo+Pj4gT24gMDYvMjUvMjAxOSAwMjo1MyBBTSwgS29lbiBWYW5k
ZXB1dHRlIHdyb3RlOgo+Pj4+Cj4+Pj4gT24gMjQuMDYuMTkgMjI6MDQsIEJlbiBHcmVlYXIgd3Jv
dGU6Cj4+Pj4+IE9uIDYvMjQvMTkgODozMiBBTSwgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+Pj4+
Pj4gSGkgQmVuLAo+Pj4+Pj4gSGkgQWxsLAo+Pj4+Pj4KPj4+Pj4+IFNvIEknbSBnb2luZyB0byBn
aXZlIHRoaXMgYW5vdGhlciB0cnkgLi4KPj4+Pj4+IEFzIHRoZSBJQlNTIGZ1bmN0aW9uYWxpdHkg
aXMgaGVhdmlseSBhZHZlcnRpc2VkIGFzIGEgZGVsdGEgdG8gCj4+Pj4+PiBtYWlubGluZSwgaXQg
d291bGQgYmUgdmVyeSBuaWNlIHRvIGdldCBpdCB3b3JraW5nIGFsc28gOikKPj4+Pj4+Cj4+Pj4+
PiBUZXN0aW5nIHRoZSBsYXRlc3QgYXRoMTBrLWN0IGRyaXZlciBhbmQgZmlybXdhcmUgc2VlbXMg
dG8gYmUgYSAKPj4+Pj4+IHN0ZXAgYmFjayBjb21wYXJlZCB0byByb3VnaGx5IGEgbW9udGggYWdv
Lgo+Pj4+Pj4KPj4+Pj4+IEknbSBjdXJyZW50bHkgc2VlaW5nIHRoZSBmaXJtd2FyZSBjcmFzaGlu
Zywgd2hpY2ggd2FzIG5vdCB0aGUgCj4+Pj4+PiBjYXNlIGJlZm9yZToKPj4+Pj4+Cj4+Pj4+Pgo+
Pj4+Pj4gYXRoMTBrLWN0ICsgaHR0LWZ3Ogo+Pj4+Pj4KPj4+Pj4+IGh0dHBzOi8vcGFzdGViaW4u
Y29tL3Jhdy83U3k5eXg2cwo+Pj4+Pgo+Pj4+PiBMb29rcyBsaWtlIGZpcm13YXJlIHJhbiBvdXQg
b2Ygc29tZSBXTUkgZXZlbnQgYnVmZmVycyBhbmQgY3Jhc2hlZCAKPj4+Pj4gaW5zdGVhZCBvZiBo
YW5kbGluZwo+Pj4+PiBpdCBtb3JlIGdyYWNlZnVsbHkuCj4+Pj4+Cj4+Pj4+IFBsZWFzZSB0cnkg
dGhlIGF0dGFjaGVkICh1bnRlc3RlZCkgZmlybXdhcmUgYW5kIHNlZSBpZiBpdCBiZWhhdmVzIAo+
Pj4+PiBiZXR0ZXIuCj4+Pj4+Cj4+Pj4gSGkgQmVuLAo+Pj4+Cj4+Pj4gMSBzdGVwIGZvcndhcmQg
aGVyZS4KPj4+Pgo+Pj4+IEknbSBub3Qgc2VlaW5nIGNyYXNoZXMgYW55bW9yZSB1c2luZyB0aGUg
dGVzdC1maXJtd2FyZS4KPj4+Pgo+Pj4+IGh0dHBzOi8vcGFzdGViaW4uY29tL3Jhdy80WmVYdTdp
dwo+Pj4+Cj4+Pj4KPj4+PiBJJ3ZlIGxpbmtlZCB1cCAyIElCU1MgZGV2aWNlcyAod2F2ZSAxLCBW
SFQ4MCkKPj4+Pgo+Pj4+IE9MU1IgdHJhZmZpYyAoVURQKSB3b3JrcyBhbmQgcGFja2V0cyBoZXJl
IGFyZSBuaWNlbHkgZ29pbmcgYmFjayAmIAo+Pj4+IGZvcnRoLgo+Pj4+Cj4+Pj4gU2ltcGx5IHBp
bmdpbmcgKElDTVApIGJldHdlZW4gdGhlIDIgZGV2aWNlcyBkb2VzIG5vdCB3b3JrLgo+Pj4+Cj4+
Pj4gV2hlbiBzZW5kaW5nIDEwMCBwaW5ncywgKDY0IGJ5dGUgbGFyZ2UpwqAgc29tZXRpbWVzIDEg
Z2V0cyB0aHJvdWdoIAo+Pj4+IC4uIGJ1dCB3aXRoIGEgbGF0ZW5jeSBvZiA+IDUwMG1zCj4+Pj4K
Pj4+Pgo+Pj4+IEkgdGhpbmsgaWYgdGhlIHNwbGF0IGFuZCB0aGUgYmVhY29uIHNwYW0gYmVsb3cg
Y291bGQgYmUgZml4ZWQgLi4gCj4+Pj4gdGhpcyB3b3VsZCBiZSBhIG1ham9yIHN0ZXAgZm9yd2Fy
ZDoKPj4+Pgo+Pj4+IFvCoMKgIDMwLjMyODQyM10gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0t
LS0tLS0tLS0tCj4+Pj4gW8KgwqAgMzAuMzMzMjUxXSBXQVJOSU5HOiBDUFU6IDAgUElEOiAxNTc4
IGF0IAo+Pj4+IC9tbnQvcmFtZGlzay9rb2VuL2Zpcm13YXJlL2J1aWxkcy9nZW5lcmljX3JiOTIy
L2J1aWxkX2Rpci90YXJnZXQtbWlwc18yNGtjX211c2wvbGludXgtYXI3MXh4X21pa3JvdGlrL2F0
aDEway1jdC0yMDE5LTA1LTA4LWY5OGI2ZGM0L2F0aDEway00LjE5L21hYy5jOjY1NjMgCj4+Pj4g
YXRoMTBrX21hY192aWZfYmVhY29uX2ZyZWUrMHhjN2MvMHgxMTVjIFthdGgxMGtfY29yZV0KPj4+
PiBbwqDCoCAzMC4zNTU2MzZdIE1vZHVsZXMgbGlua2VkIGluOiBtYnQgYXRoOWsgYXRoOWtfY29t
bW9uIHFjc2VyaWFsIAo+Pj4+IHBwcG9lIHBwcF9hc3luYyBvcHRpb24gY2RjX21iaW0gYXRoOWtf
aHcgYXRoMTBrX3BjaSBhdGgxMGtfY29yZSBhdGggCj4+Pj4gdXNiX3d3YW4gc2llcnJhX25ldCBz
aWVycmEgcm5kaXNfaG9zdCBxbWlfd3dhbiBwcHBveCBwcHBfZ2VuZXJpYyAKPj4+PiBtYWM4MDIx
MSBpcHRhYmxlX25hdCBpcHRhYmxlX21hbmdsZSBpcHRhYmxlX2ZpbHRlciBpcHRfUkVKRUNUIAo+
Pj4+IGlwdF9NQVNRVUVSQURFIGlwX3RhYmxlcyBodWF3ZWlfY2RjX25jbSBmdGRpX3NpbyBjZmc4
MDIxMSAKPj4+PiBjZGNfc3Vic2V0IGNkY19uY20gY2RjX2V0aGVyIHh0X3RpbWUgeHRfdGNwdWRw
IHh0X3N0YXRlIHh0X25hdCAKPj4+PiB4dF9tdWx0aXBvcnQgeHRfbWFyayB4dF9tYWMgeHRfbGlt
dAo+Pj4+IFvCoMKgIDMwLjQyNzMzMV3CoCBubHNfdXRmOCBubHNfaXNvODg1OV8xIG5sc19jcDQz
NyBhdXRoZW5jIAo+Pj4+IGVoY2lfcGxhdGZvcm0gc2RfbW9kIHNjc2lfbW9kIGVoY2lfaGNkIGdw
aW9fYnV0dG9uX2hvdHBsdWcgZXh0NCAKPj4+PiBtYmNhY2hlIGpiZDIgdXNiY29yZSBubHNfYmFz
ZSB1c2JfY29tbW9uIHB0cCBwcHNfY29yZSBtaWkgYWVhZCAKPj4+PiBjcnlwdG9fbnVsbCBjcnlw
dG9tZ3IgY3JjMzJjX2dlbmVyaWMgY3J5cHRvX2hhc2gKPj4+PiBbwqDCoCAzMC40NDgwMTddIENQ
VTogMCBQSUQ6IDE1NzggQ29tbTogd3BhX3N1cHBsaWNhbnQgTm90IHRhaW50ZWQgCj4+Pj4gNC4x
NC4xMjkgIzAKPj4+Cj4+PiBQbGVhc2UgbG9vayBpbiB5b3VyIGNvZGUgYW5kIGxldCBtZSBrbm93
IHRoZSBzb3VyY2UgYXJvdW5kIHRoZSBsaW5lIAo+Pj4gaW4gbWFjLmMgKDY1NjMpIHRoYXQgaXMg
c3BsYXR0aW5nLgo+Pj4KPj4+IEFsc28sIHlvdSBtaWdodCBncmFiIHRoZSBsYXRlc3QgYXRoMTBr
LWN0IHJlcG8sIGl0IGhhcyBhIHR3ZWFrIHRoYXQgCj4+PiBtaWdodCBmaXggdGhlIFNXQkEgb3Zl
cnJ1bgo+Pj4gbWVzc2FnZXMuCj4+Pgo+Pj4gaHR0cHM6Ly9naXRodWIuY29tL2dyZWVhcmIvYXRo
MTBrLWN0Cj4+Pgo+Pj4gVGhhbmtzLAo+Pj4gQmVuCj4+Pgo+PiBIaSBCZW4sCj4+Cj4+IEhlcmUg
aXMgdGhlIG91dHB1dCBiYXNlZCBvbiB0aGUgbGF0ZXN0IGdpdCBIRUFEIG9mIHlvdXIgY3QgdHJl
ZSwgCj4+IGNvbWJpbmVkIHdpdGggdGhlIHRlc3QgZmlybXdhcmU6Cj4+Cj4+IGh0dHBzOi8vcGFz
dGViaW4uY29tL3Jhdy9rd0M2YzE4Sgo+Cj4gSGVsbG8sCj4KPiBUaGUgc3BsYXQgZGVjb2RlIGRv
ZXMgbm90IG1hdGNoIHRoZSBzb3VyY2UgY29kZSwgc28gSSdtIG5vdCB3aGljaCBpcyAKPiBjb3Jy
ZWN0Lgo+Ck9wZW5XcnQgc2VlbXMgdG8gYWRkIGN1c3RvbSBwYXRjaGVzIHRvIHlvdXIgc291cmNl
LgoKUGxlYXNlIGZpbmQgdGhlIGNvbXBsZXRlIHNvdXJjZSBpbiBzdWJzZXF1ZW50IG1haWwgYXMg
YmVpbmcgYnVpbGQuCgpSZWdhcmRzLAoKS29lbgoKPiBbIDMyLjM0MTA3N10gLS0tLS0tLS0tLS0t
WyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4gW8KgwqAgMzIuMzQ1ODk4XSBXQVJOSU5HOiBDUFU6
IDAgUElEOiAxNDcwIGF0IAo+IC9tbnQvcmFtZGlzay9rb2VuL2Zpcm13YXJlL2J1aWxkcy9nZW5l
cmljX3JiOTIyL2J1aWxkX2Rpci90YXJnZXQtbWlwc18yNGtjX211c2wvbGludXgtYXI3MXh4X21p
a3JvdGlrL2F0aDEway1jdC0yMDE5LTA2LTEzLWYwYWE4MTMwL2F0aDEway00LjE5L21hYy5jOjY1
ODEgCj4gYXRoMTBrX21hY192aWZfYmVhY29uX2ZyZWUrMHhjNTQvMHgxMTJjIFthdGgxMGtfY29y
ZV0KPgo+IChsaW5lIDY1ODEgaXMgbm90IGluIHRoZSBtYWNfdmlmX2JlYWNvbl9mcmVlIG1ldGhv
ZCkuCj4KPiBBbHNvLCBwbGVhc2UgZW5hYmxlIHRoZSBmaXJtd2FyZSBEQkdMT0cgbG9nZ2luZyBw
ZXIgaW5zdHJ1Y3Rpb25zIGhlcmU6Cj4KPiBodHRwOi8vd3d3LmNhbmRlbGF0ZWNoLmNvbS9hdGgx
MGstYnVncy5waHAKPgo+IFRoaXMgaXMgdGhlIHN1Z2dlc3RlZCBsZXZlbCB0byBkZWJ1ZyBhdDrC
oCAweGMwMDAwMDMyCgpXaWxsIGRvIGFuZCB3aWxsIGdldCBiYWNrIG9uIHRoaXMuCgpUaGFua3MK
Cj4KPiBUaGFua3MsCj4gQmVuCj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBs
aXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGlu
Zm8vb3BlbndydC1kZXZlbAo=
