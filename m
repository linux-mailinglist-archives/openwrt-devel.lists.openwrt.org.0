Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE6582EAA
	for <lists+openwrt-devel@lfdr.de>; Tue,  6 Aug 2019 11:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VkAZEMFPLYbKvz3GGtSnLk5ruY9iQcRNRXuAD3IDXgM=; b=TNbTLIEG2+q7cCRbqCogwX7Zp
	SMXRJxh2S+VgoGpM899S0R8hQFZihgiP5ERuIjXnkuZu/dTNe1+nJY+ImQ3gtvVBi4oCWHG+3cqo+
	gDDnTFjKQSaZAK7BCPqM/V/x1mau1kIdAIh+coqPvOCaNaLvr3wkcZ/Aq6MnezYQDwOowqPrWpfJF
	ptmFtoGEB14URPQyvr7wfamOAn4c194CFtS42l1FvsKjYySRZtpT6LIg/5X+8sxrVuwNznEd0oAT1
	N3vN78RWr/6H8EWjR9RMB2J5YA/X2eAPIylS3TZzVIdY8iSWEFdP+GMzYyrpMFNnK1KndWs7+lkVL
	1t3SLs3nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huvji-000852-Rj; Tue, 06 Aug 2019 09:26:30 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huvjO-00084e-Ei
 for openwrt-devel@lists.openwrt.org; Tue, 06 Aug 2019 09:26:12 +0000
Received: by mail-ed1-x542.google.com with SMTP id w13so81739523eds.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 06 Aug 2019 02:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=VySD9nsfNX0KV0yi13vtrdJzZg47MSNC4QkFQAAwXGc=;
 b=txUqPzxjpN4OS8hA+fD7zeSSiE+SCI+Ym8MRRHExfweFinIsf4ATrLltXBmKdp9eDV
 7iHlrgIBU9+uLZrnzsru8x6NU3IHneUDT88LPLsV9xEKnuvko+QH4A1FqJzkHOZm3/NR
 3IS9P7D8vnsbMqrsovWzg0dB1snjccyonSZsgh0KZfPwxOeFHcq14uCIyY9YcD/2QJKM
 Eu0zeT7Z2bPV6WzJTnGlcfj7nXVOawDk0e32+z+ztfkIdeLUdmxMvrZ8N9l4lf/EVS+s
 XM2fAF5XAYn79qhHZdNCxYfSbBlISzmXpWja1+/3wS1+3bls6SbyFsRylJ6fJWGqCp5s
 DLog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=VySD9nsfNX0KV0yi13vtrdJzZg47MSNC4QkFQAAwXGc=;
 b=HZWBNsUSDtaSJch2SFGkl3aH9OFR82G7pjmlt2oUwJbcxIvxJXqFRbyJMT0eMO7+C/
 uzzYro2LCj+06b5LuKRp7l4SSpxLk/rA08M1ARHCDFwPnq0DDLTEdI+q9SIrJSWTYMpz
 Yn4R4LVQ0W11Ypy0OAAQ+ogcHhgvF5/avpys5Fw6LsXwoupiaidwr5vDP6+F1pixEln4
 VB3EaNbtBeACZm8QDZ4ZzxQ2NFtAQQFnRz5sGkSnuHq6R5+KtogKbkYyRUwgcUnGHGoU
 sBss9+DGVRtGhUId+OguUgRM7ogqcsrJ5fMlz79xfiEZWIqbh5GUGOfm2QZhggfHdjWn
 XRnw==
X-Gm-Message-State: APjAAAV2LkrsNmFthtmctGhBIq1b0uP4DUfZ36N7GSR5ny+6Clf6ReiA
 m/s7SdvRPetvlxUfRgr09aS/JgqkO332hA==
X-Google-Smtp-Source: APXvYqxgDEPJB/EwIMRaLTgZDXNss7dBOsxEfEL9ad/MxlxJPFdytC2nsMs8/gQXLjsJy6XsU3Cs2A==
X-Received: by 2002:a17:906:b209:: with SMTP id
 p9mr2170681ejz.270.1565083568384; 
 Tue, 06 Aug 2019 02:26:08 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id pv18sm14520202ejb.14.2019.08.06.02.26.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Aug 2019 02:26:07 -0700 (PDT)
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
To: Ben Greear <greearb@candelatech.com>,
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
 <f51ea660-d382-7d31-3ecb-f4beddfb997f@candelatech.com>
 <834cede9-27ca-9987-d86e-54335518857b@ncentric.com>
 <44148c8c-2077-1558-83f1-dd59bc483d3f@ncentric.com>
Message-ID: <9c9445b3-be50-9f2b-5344-9d34ab6bcad4@ncentric.com>
Date: Tue, 6 Aug 2019 11:26:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <44148c8c-2077-1558-83f1-dd59bc483d3f@ncentric.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_022610_636857_033B13FA 
X-CRM114-Status: GOOD (  30.43  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: pastebin.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: pastebin.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Ck9uIDA1LjA4LjE5IDE4OjE3LCBLb2VuIFZhbmRlcHV0dGUgd3JvdGU6Cj4KPiBPbiAwNS4wOC4x
OSAxNzo0NywgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+Pgo+PiBPbiAyNy4wNi4xOSAxNjoyNCwg
QmVuIEdyZWVhciB3cm90ZToKPj4+IE9uIDYvMjcvMTkgNzoxNyBBTSwgS29lbiBWYW5kZXB1dHRl
IHdyb3RlOgo+Pj4+Cj4+Pj4gT24gMjYuMDYuMTkgMTg6MzksIEJlbiBHcmVlYXIgd3JvdGU6Cj4+
Pj4+IE9uIDYvMjYvMTkgOToyOCBBTSwgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+Pj4+Pj4KPj4+
Pj4+IE9uIDI2LjA2LjE5IDE4OjE2LCBCZW4gR3JlZWFyIHdyb3RlOgo+Pj4+Pj4+IE9uIDYvMjYv
MTkgMjowMiBBTSwgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBPbiAy
NS4wNi4xOSAxNTo1NCwgQmVuIEdyZWVhciB3cm90ZToKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pgo+Pj4+
Pj4+Pj4gT24gMDYvMjUvMjAxOSAwMjo1MyBBTSwgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+Pj4+
Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gT24gMjQuMDYuMTkgMjI6MDQsIEJlbiBHcmVlYXIgd3JvdGU6Cj4+
Pj4+Pj4+Pj4+IE9uIDYvMjQvMTkgODozMiBBTSwgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+Pj4+
Pj4+Pj4+Pj4gSGkgQmVuLAo+Pj4+Pj4+Pj4+Pj4gSGkgQWxsLAo+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+
Pj4+Pj4+IFNvIEknbSBnb2luZyB0byBnaXZlIHRoaXMgYW5vdGhlciB0cnkgLi4KPj4+Pj4+Pj4+
Pj4+IEFzIHRoZSBJQlNTIGZ1bmN0aW9uYWxpdHkgaXMgaGVhdmlseSBhZHZlcnRpc2VkIGFzIGEg
ZGVsdGEgCj4+Pj4+Pj4+Pj4+PiB0byBtYWlubGluZSwgaXQgd291bGQgYmUgdmVyeSBuaWNlIHRv
IGdldCBpdCB3b3JraW5nIGFsc28gOikKPj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+PiBUZXN0aW5n
IHRoZSBsYXRlc3QgYXRoMTBrLWN0IGRyaXZlciBhbmQgZmlybXdhcmUgc2VlbXMgdG8gCj4+Pj4+
Pj4+Pj4+PiBiZSBhIHN0ZXAgYmFjayBjb21wYXJlZCB0byByb3VnaGx5IGEgbW9udGggYWdvLgo+
Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+IEknbSBjdXJyZW50bHkgc2VlaW5nIHRoZSBmaXJtd2Fy
ZSBjcmFzaGluZywgd2hpY2ggd2FzIG5vdCAKPj4+Pj4+Pj4+Pj4+IHRoZSBjYXNlIGJlZm9yZToK
Pj4+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+Pj4gYXRoMTBrLWN0ICsgaHR0LWZ3
Ogo+Pj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+Pj4+IGh0dHBzOi8vcGFzdGViaW4uY29tL3Jhdy83U3k5
eXg2cwo+Pj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+PiBMb29rcyBsaWtlIGZpcm13YXJlIHJhbiBvdXQg
b2Ygc29tZSBXTUkgZXZlbnQgYnVmZmVycyBhbmQgCj4+Pj4+Pj4+Pj4+IGNyYXNoZWQgaW5zdGVh
ZCBvZiBoYW5kbGluZwo+Pj4+Pj4+Pj4+PiBpdCBtb3JlIGdyYWNlZnVsbHkuCj4+Pj4+Pj4+Pj4+
Cj4+Pj4+Pj4+Pj4+IFBsZWFzZSB0cnkgdGhlIGF0dGFjaGVkICh1bnRlc3RlZCkgZmlybXdhcmUg
YW5kIHNlZSBpZiBpdCAKPj4+Pj4+Pj4+Pj4gYmVoYXZlcyBiZXR0ZXIuCj4+Pj4+Pj4+Pj4+Cj4+
Pj4+Pj4+Pj4gSGkgQmVuLAo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gMSBzdGVwIGZvcndhcmQgaGVy
ZS4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IEknbSBub3Qgc2VlaW5nIGNyYXNoZXMgYW55bW9yZSB1
c2luZyB0aGUgdGVzdC1maXJtd2FyZS4KPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IGh0dHBzOi8vcGFz
dGViaW4uY29tL3Jhdy80WmVYdTdpdwo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBJ
J3ZlIGxpbmtlZCB1cCAyIElCU1MgZGV2aWNlcyAod2F2ZSAxLCBWSFQ4MCkKPj4+Pj4+Pj4+Pgo+
Pj4+Pj4+Pj4+IE9MU1IgdHJhZmZpYyAoVURQKSB3b3JrcyBhbmQgcGFja2V0cyBoZXJlIGFyZSBu
aWNlbHkgZ29pbmcgCj4+Pj4+Pj4+Pj4gYmFjayAmIGZvcnRoLgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+
Pj4gU2ltcGx5IHBpbmdpbmcgKElDTVApIGJldHdlZW4gdGhlIDIgZGV2aWNlcyBkb2VzIG5vdCB3
b3JrLgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gV2hlbiBzZW5kaW5nIDEwMCBwaW5ncywgKDY0IGJ5
dGUgbGFyZ2UpIHNvbWV0aW1lcyAxIGdldHMgCj4+Pj4+Pj4+Pj4gdGhyb3VnaCAuLiBidXQgd2l0
aCBhIGxhdGVuY3kgb2YgPiA1MDBtcwo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBJ
IHRoaW5rIGlmIHRoZSBzcGxhdCBhbmQgdGhlIGJlYWNvbiBzcGFtIGJlbG93IGNvdWxkIGJlIGZp
eGVkIAo+Pj4+Pj4+Pj4+IC4uIHRoaXMgd291bGQgYmUgYSBtYWpvciBzdGVwIGZvcndhcmQ6Cj4+
Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBbwqDCoCAzMC4zMjg0MjNdIC0tLS0tLS0tLS0tLVsgY3V0IGhl
cmUgXS0tLS0tLS0tLS0tLQo+Pj4+Pj4+Pj4+IFvCoMKgIDMwLjMzMzI1MV0gV0FSTklORzogQ1BV
OiAwIFBJRDogMTU3OCBhdCAKPj4+Pj4+Pj4+PiAvbW50L3JhbWRpc2sva29lbi9maXJtd2FyZS9i
dWlsZHMvZ2VuZXJpY19yYjkyMi9idWlsZF9kaXIvdGFyZ2V0LW1pcHNfMjRrY19tdXNsL2xpbnV4
LWFyNzF4eF9taWtyb3Rpay9hdGgxMGstY3QtMjAxOS0wNS0wOC1mOThiNmRjNC9hdGgxMGstNC4x
OS9tYWMuYzo2NTYzIAo+Pj4+Pj4+Pj4+IGF0aDEwa19tYWNfdmlmX2JlYWNvbl9mcmVlKzB4Yzdj
LzB4MTE1YyBbYXRoMTBrX2NvcmVdCj4+Pj4+Pj4+Pj4gW8KgwqAgMzAuMzU1NjM2XSBNb2R1bGVz
IGxpbmtlZCBpbjogbWJ0IGF0aDlrIGF0aDlrX2NvbW1vbiAKPj4+Pj4+Pj4+PiBxY3NlcmlhbCBw
cHBvZSBwcHBfYXN5bmMgb3B0aW9uIGNkY19tYmltIGF0aDlrX2h3IGF0aDEwa19wY2kgCj4+Pj4+
Pj4+Pj4gYXRoMTBrX2NvcmUgYXRoIHVzYl93d2FuIHNpZXJyYV9uZXQgc2llcnJhIHJuZGlzX2hv
c3QgCj4+Pj4+Pj4+Pj4gcW1pX3d3YW4gcHBwb3ggcHBwX2dlbmVyaWMgbWFjODAyMTEgaXB0YWJs
ZV9uYXQgCj4+Pj4+Pj4+Pj4gaXB0YWJsZV9tYW5nbGUgaXB0YWJsZV9maWx0ZXIgaXB0X1JFSkVD
VCBpcHRfTUFTUVVFUkFERSAKPj4+Pj4+Pj4+PiBpcF90YWJsZXMgaHVhd2VpX2NkY19uY20gZnRk
aV9zaW8gY2ZnODAyMTEgY2RjX3N1YnNldCBjZGNfbmNtIAo+Pj4+Pj4+Pj4+IGNkY19ldGhlciB4
dF90aW1lIHh0X3RjcHVkcCB4dF9zdGF0ZSB4dF9uYXQgeHRfbXVsdGlwb3J0IAo+Pj4+Pj4+Pj4+
IHh0X21hcmsgeHRfbWFjIHh0X2xpbXQKPj4+Pj4+Pj4+PiBbwqDCoCAzMC40MjczMzFdwqAgbmxz
X3V0ZjggbmxzX2lzbzg4NTlfMSBubHNfY3A0MzcgYXV0aGVuYyAKPj4+Pj4+Pj4+PiBlaGNpX3Bs
YXRmb3JtIHNkX21vZCBzY3NpX21vZCBlaGNpX2hjZCBncGlvX2J1dHRvbl9ob3RwbHVnIAo+Pj4+
Pj4+Pj4+IGV4dDQgbWJjYWNoZSBqYmQyIHVzYmNvcmUgbmxzX2Jhc2UgdXNiX2NvbW1vbiBwdHAg
cHBzX2NvcmUgCj4+Pj4+Pj4+Pj4gbWlpIGFlYWQgY3J5cHRvX251bGwgY3J5cHRvbWdyIGNyYzMy
Y19nZW5lcmljIGNyeXB0b19oYXNoCj4+Pj4+Pj4+Pj4gW8KgwqAgMzAuNDQ4MDE3XSBDUFU6IDAg
UElEOiAxNTc4IENvbW06IHdwYV9zdXBwbGljYW50IE5vdCAKPj4+Pj4+Pj4+PiB0YWludGVkIDQu
MTQuMTI5ICMwCj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4gUGxlYXNlIGxvb2sgaW4geW91ciBjb2RlIGFu
ZCBsZXQgbWUga25vdyB0aGUgc291cmNlIGFyb3VuZCB0aGUgCj4+Pj4+Pj4+PiBsaW5lIGluIG1h
Yy5jICg2NTYzKSB0aGF0IGlzIHNwbGF0dGluZy4KPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBBbHNvLCB5
b3UgbWlnaHQgZ3JhYiB0aGUgbGF0ZXN0IGF0aDEway1jdCByZXBvLCBpdCBoYXMgYSB0d2VhayAK
Pj4+Pj4+Pj4+IHRoYXQgbWlnaHQgZml4IHRoZSBTV0JBIG92ZXJydW4KPj4+Pj4+Pj4+IG1lc3Nh
Z2VzLgo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IGh0dHBzOi8vZ2l0aHViLmNvbS9ncmVlYXJiL2F0aDEw
ay1jdAo+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+IFRoYW5rcywKPj4+Pj4+Pj4+IEJlbgo+Pj4+Pj4+Pj4K
Pj4+Pj4+Pj4gSGkgQmVuLAo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBIZXJlIGlzIHRoZSBvdXRwdXQgYmFz
ZWQgb24gdGhlIGxhdGVzdCBnaXQgSEVBRCBvZiB5b3VyIGN0IAo+Pj4+Pj4+PiB0cmVlLCBjb21i
aW5lZCB3aXRoIHRoZSB0ZXN0IGZpcm13YXJlOgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBodHRwczovL3Bh
c3RlYmluLmNvbS9yYXcva3dDNmMxOEoKPj4+Pj4+Pgo+Pj4+Pj4+IEhlbGxvLAo+Pj4+Pj4+Cj4+
Pj4+Pj4gVGhlIHNwbGF0IGRlY29kZSBkb2VzIG5vdCBtYXRjaCB0aGUgc291cmNlIGNvZGUsIHNv
IEknbSBub3QgCj4+Pj4+Pj4gd2hpY2ggaXMgY29ycmVjdC4KPj4+Pj4+Pgo+Pj4+Pj4gT3Blbldy
dCBzZWVtcyB0byBhZGQgY3VzdG9tIHBhdGNoZXMgdG8geW91ciBzb3VyY2UuCj4+Pj4+Pgo+Pj4+
Pj4gUGxlYXNlIGZpbmQgdGhlIGNvbXBsZXRlIHNvdXJjZSBpbiBzdWJzZXF1ZW50IG1haWwgYXMg
YmVpbmcgYnVpbGQuCj4+Pj4+Cj4+Pj4+IEkgZGlkIGxvb2sgaW4gdGhhdCBjb2RlLCBhbmQgdGhh
dCBpcyB3aGVyZSBJIHNhdyB0aGUgbWlzbWF0Y2guIAo+Pj4+PiBQbGVhc2UgY2hlY2sgeW91ciBv
d24gbG9jYWwgc3lzdGVtCj4+Pj4+IGFuZCBzZWUgaWYgdGhlIHNwbGF0IG1hdGNoZXMgeW91ciBj
b2RlP8KgIE1heWJlIEkgbWFkZSBzb21lIG1pc3Rha2UgCj4+Pj4+IG9mIGNvdXJzZS4uLgo+Pj4+
Pgo+Pj4+PiBZb3UgY2FuIHBhc3RlIH4yMCBsaW5lcyBvZiBjb2RlIGFyb3VuZCB0aGUgcHJvcGVy
IHNwbGF0IGxpbmUgYW5kIAo+Pj4+PiB0aGVuIEkgY2FuIGZpbmQgaXQgaW4gbXkKPj4+Pj4gc291
cmNlLi4uCj4+Pj4+Cj4+Pj4+IFRoYW5rcywKPj4+Pj4gQmVuCj4+Pj4+Cj4+Pj4+Cj4+Pj4gSGkg
QmVuLAo+Pj4+Cj4+Pj4gSnVzdCByZXRyaWVkIGFnYWluIG9uIGEgc2xpZ2h0bHkgb2xkZXIgY29t
bWl0ICgyMDE5LTA1LTA4KSBhbmQgdGhlIAo+Pj4+IHNwbGF0IHBvaW50cyB0byBhbm90aGVyIGxv
Y2F0aW9uIG5vdy4KPj4+PiBXaGVuIGxvb2tpbmcgaXQgdXAsIGl0IGFnYWluIHBvaW50cyB0byB0
aGUgV0FSTl9PTiBwb2ludGVkIGJlbG93IC4uCj4+Pj4KPj4+PiBDaGVja2luZyBzaG93cyB0aGF0
IGFsbCBjYWxscyB0byBhdGgxMGtfbWFjX3ZpZl9iZWFjb25fZnJlZSgpIGNhbGxzIAo+Pj4+IGFy
ZSB3YXkgYWJvdmUgdGhpcyBsaW5lIChoaWdoZXN0IGxpbmUgbnIgaXMgYXJvdW5kIGxpbmUxOTcw
KQo+Pj4+IEkgY3VycmVudGx5IGNhbid0IGV4cGxhaW4gd2hlcmUgdGhlIG1pc21hdGNoIGNvbWVz
IGZyb20gLi4KPj4+Pgo+Pj4+IEN1cnJlbnQgYnVpbGQgYmVsb3cgaXMganVzdCB0aGUgZ2l0IEhF
QUQgb2Ygb3BlbndydCAxOS4wNyBicmFuY2gsIAo+Pj4+IGNsb25lZCwgYnVpbGQgYW5kIGZsYXNo
ZWQgd2l0aG91dCBhbnkgbW9kaWZpY2F0aW9uLgo+Pj4+Cj4+Pj4KPj4+PiBbwqDCoCAzMS45NTY3
NzRdIFdBUk5JTkc6IENQVTogMCBQSUQ6IDE3MjUgYXQgCj4+Pj4gL21udC9yYW1kaXNrL2tvZW4v
ZmlybXdhcmUvYnVpbGRzL2dlbmVyaWNfcmI5MjIvYnVpbGRfZGlyL3RhcmdldC1taXBzXzI0a2Nf
bXVzbC9saW51eC1hcjcxeHhfbWlrcm90aWsvYXRoMTBrLWN0LTIwMTktMDUtMDgtZjk4YjZkYzQv
YXRoMTBrLTQuMTkvbWFjLmM6NjU2MyAKPj4+PiBhdGgxMGtfbWFjX3ZpZl9iZWFjb25fZnJlZSsw
eGM3Yy8weDExNWMgW2F0aDEwa19jb3JlXQo+Pj4+Cj4+Pj4KPj4+Pgo+Pj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IGF0aDEwa19jb25maWdfcHMoYXIpOwo+Pj4+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChyZXQpCj4+Pj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGF0aDEwa193YXJuKGFyLCAiZmFp
bGVkIHRvIHNldHVwIHBzIG9uIAo+Pj4+IHZkZXYgJWk6ICVkXG4iLAo+Pj4+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBhcnZpZi0+dmRldl9pZCwgcmV0KTsKPj4+PiDCoMKgwqDCoMKgwqDCoMKgIH0KPj4+Pgo+
Pj4+IMKgwqDCoMKgwqDCoMKgwqAgaWYgKGNoYW5nZWQgJiBCU1NfQ0hBTkdFRF9NQ0FTVF9SQVRF
ICYmCj4+Pj4gLS0tPsKgIMKgwqDCoMKgwqDCoMKgICFXQVJOX09OKGF0aDEwa19tYWNfdmlmX2No
YW4oYXJ2aWYtPnZpZiwgJmRlZikpKSB7Cj4+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgYmFuZCA9IGRlZi5jaGFuLT5iYW5kOwo+Pj4KPj4+IEkgdGhpbmsgdGhpcyBtaWdodCBu
b3QgYmUgdG8gc2VyaW91cyBvZiBhIGJ1ZywgYW5kIHByb2JhYmx5IGRvZXMgbm90IAo+Pj4gY2F1
c2UgYW55IHJlYWwKPj4+IHRyb3VibGUuCj4+Pgo+Pj4gSXQgaXMgYWxzbyBwcm9iYWJseSBhIGJ1
ZyBpbiBtYWM4MDIxMSBvciBzaW1pbGFyLCBidXQgbm90IGNlcnRhaW4gCj4+PiBhYm91dCB0aGF0
Lgo+Pj4KPj4+IFRoZSBnZW5lcmFsIHNldCBvZiBidWdzIHJlbGF0ZWQgdG8gSUJTUyBzZWVtIHRv
IGJlIGluYWJpbGl0eSB0byAKPj4+IHRyYW5zbWl0IGZyYW1lcwo+Pj4gc29tZXRpbWVzICh0aG91
Z2ggaXQgdXN1YWxseSB3b3JrcyB3ZWxsIGluIG15IGxhYiwgc28gSSBoYXZlIG5vdCAKPj4+IGJl
ZW4gYWJsZSB0byByZWFsbHkKPj4+IGRlYnVnIGl0KS4KPj4+Cj4+PiBUaGUgc2ltcGxlciB0aGUg
dGVzdCBjYXNlLCB0aGUgYmV0dGVyLsKgIFNvLCBpZiB5b3UgY2FuIHJlcHJvZHVjZSAKPj4+IHNv
bWUgcGFja2V0IHRyYW5zbWl0Cj4+PiBpc3N1ZSwgcHJlZmVyYWJseToKPj4+Cj4+PiAyIHBlZXJz
Cj4+PiBzbG93IHNwZWVkIHRyYWZmaWMKPj4+IG5vIGVuY3J5cHRpb24KPj4+IG5vIGZ1bm55IHJv
dXRpbmcgKE9MU1IsIGJhdG1hbiwgZXRjKQo+Pj4KPj4+IFBsZWFzZSBsZXQgbWUga25vdy4KPj4+
Cj4+PiBBbmQsIGlmIHlvdSBjYW5ub3QgcmVwcm9kdWNlIGluIHRoaXMgc2ltcGxlIHNldHVwLCB0
aGVuIHdoYXQKPj4+IGlzIHRoZSB0aGluZyBjbG9zZXN0IHRvIHRoaXMgdGhhdCBkb2VzIHNob3cg
dGhlIGlzc3VlP8KgIEkgY2FuIGJ1aWxkIAo+Pj4gZmlybXdhcmUgd2l0aAo+Pj4gdmVyYm9zZSB0
eC1wYXRoIChhbmQgcngtcGF0aCwgZm9yIHRoYXQgbWF0dGVyKSBkZWJ1Z2dpbmcgYW5kIGxldCB5
b3UgCj4+PiBydW4gaXQgaWYgeW91IGNhbgo+Pj4gZmluZCBhIGdvb2QgdGVzdCBjYXNlLCBidXQg
aXQgY2Fubm90IGdhdGhlciB1c2VmdWwgbG9ncyBhdCBoaWdoIAo+Pj4gcGFja2V0IHRyYW5zbWlz
c2lvbiByYXRlcy4KPj4+Cj4+PiBUaGFua3MsCj4+PiBCZW4KPj4+Cj4KPj4gSGkgQmVuLAo+Pgo+
PiBJIGZpbmFsbHkgbWFuYWdlZCB0byBnZXQgdG8gc29tZSB0aW1lIHRvIHByb3Blcmx5IHRha2Ug
YSBsb29rIHVzaW5nIGEgCj4+IHNpbXBsZSBzZXR1cC4KPj4KPj4gQXR0YWNoZWQgYWxsIHJlcXVp
cmVkIGZpbGVzIHRvIHNpbXVsYXRlIHRoZSBpc3N1ZS4KPj4KPj4gSSBjb21waWxlZCB0aGUgbGF0
ZXN0IE9wZW5XcnQgbWFzdGVyIHN0YXRlLCAoaW5jbHVkZWQgYSBmdWxsIAo+PiB3cGFfc3VwcGxp
Y2FudCBhbmQgaXBlcmYgdG9vbHMpIGFuZCByYW4gdGhlIDIgc3RhcnRzLgo+Pgo+PiBBdHRhY2hl
ZCBhbHNvIGxvZ3MgYXMgc2VlbiBmcm9tIGJvdGggYm9hcmRzIHNpbXVsdGFuZW91c2x5Lgo+Pgo+
Pgo+PiBiYXNpY2FsbHk6Cj4+Cj4+IC0gSWYgdGhlIGJvYXJkcyBmaW5hbGx5IGRvIGxpbmsgYWZ0
ZXIgbG90cyBvZiB0cmllcywgaXQgd2lsbCBoYXZlIGEgCj4+ID4yMDBtcyBsYXRlbmN5IGFuZCBt
YXggc3BlZWQgb2YgYWJvdXQgM01iaXQuCj4+Cj4+IC0gVGhlIHdwYV9zdXAgY29uZmlnIGZpbGUg
aXMgdGhlIG1vc3QgYmFzaWMgUlNOIGVuYWJsZWQgY29uZmlnLgo+Pgo+PiAtIEkgYWxzbyB0cmll
ZCB0aGUgY3VycmVudCBNYXN0ZXIgc3RhdGUgd2l0aC93aXRob3V0IGFsbCBjdXN0b20gCj4+IHBh
dGhlcywgYnV0IHRoZSByZXN1bHQgaXMgdGhlIHNhbWUuCj4+Cj4+IC0gd3BhX3N1cHAgYWxzbyBu
YWdzIGFib3V0IHNvbWUgbWlzc2luZyBJRSdzCj4+Cj4+Cj4+IEh3IHVzZWQ6Cj4+Cj4+IC0gMngg
UkItOTIyVUFHUyBjb250YWluaW5nIGEgb24tYm9hcmQgYXI5ODh4LCBjYXBhYmxlIG9mIDMwZEJt
Lgo+Pgo+PiAtIDJ4IHN0YW5kYXJkIDVHSHogb21uaSBhbnRlbm5hZQo+Pgo+PiAtIGJvYXJkIHNl
cGVyYXRpb24gZGlzdGFuY2UgY2EgNmZ0Cj4+Cj4+Cj4+Cj4+IEtpbmQgcmVnYXJkcywKPj4KPj4g
S29lbgo+Pgo+IChSZS1TZW5kIGR1ZSB0byBsYXJnZSBzaXplKQoKCkhpIEJlbiwKCkVuYWJsaW5n
IGRlYnVnIHNoZWQgc29tZSBsaWdodDoKCmF0aDEway00LjE5L3dtaS5jOgoKCiDCoMKgwqDCoMKg
wqDCoCBzcGluX2xvY2tfYmgoJmFyLT5kYXRhX2xvY2spOwoKIMKgwqDCoMKgwqDCoMKgIGJjbiA9
IGFydmlmLT5iZWFjb247CgogwqDCoMKgwqDCoMKgwqAgaWYgKCFiY24pCiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgZ290byB1bmxvY2s7CgogwqDCoMKgwqDCoMKgwqAgY2IgPSBBVEgx
MEtfU0tCX0NCKGJjbik7CgogwqDCoMKgwqDCoMKgwqAgc3dpdGNoIChhcnZpZi0+YmVhY29uX3N0
YXRlKSB7CiDCoMKgwqDCoMKgwqDCoCBjYXNlIEFUSDEwS19CRUFDT05fU0VORElORzoKIMKgwqDC
oMKgwqDCoMKgIGNhc2UgQVRIMTBLX0JFQUNPTl9TRU5UOgogwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGJyZWFrOwogwqDCoMKgwqDCoMKgwqAgY2FzZSBBVEgxMEtfQkVBQ09OX1NDSEVE
VUxFRDoKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBhcnZpZi0+YmVhY29uX3N0YXRl
ID0gQVRIMTBLX0JFQUNPTl9TRU5ESU5HOwogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHNwaW5fdW5sb2NrX2JoKCZhci0+ZGF0YV9sb2NrKTsKCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgZHRpbV96ZXJvID0gISEoY2ItPmZsYWdzICYgQVRIMTBLX1NLQl9GX0RUSU1fWkVS
Tyk7CiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGVsaXZlcl9jYWIgPSAhIShjYi0+
ZmxhZ3MgJiBBVEgxMEtfU0tCX0ZfREVMSVZFUl9DQUIpOwogwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHJldCA9IGF0aDEwa193bWlfYmVhY29uX3NlbmRfcmVmX25vd2FpdChhcnZpZiwK
YmNuLT5kYXRhLCBiY24tPmxlbiwKY2ItPnBhZGRyLAogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZHRpbV96ZXJvLApkZWxpdmVyX2NhYik7CiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXRoMTBrX2RiZyhhciwgQVRIMTBLX0RCR19C
RUFDT04sCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgICJ3bWkgZXZlbnQgYmVhY29uIHNlbmQsIHZkZXYtaWQ6ICV1IHJ2OiAlZFxuIiwKIMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgYXJ2aWYtPnZk
ZXZfaWQsIHJldCk7CgogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNwaW5fbG9ja19i
aCgmYXItPmRhdGFfbG9jayk7CgogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGlmIChy
ZXQgPT0gMCkKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
YXJ2aWYtPmJlYWNvbl9zdGF0ZSA9IEFUSDEwS19CRUFDT05fU0VOVDsKIMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBlbHNlCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIGFydmlmLT5iZWFjb25fc3RhdGUgPSBBVEgxMEtfQkVBQ09OX1NDSEVEVUxF
RDsKIMKgwqDCoMKgwqDCoMKgIH0KCnVubG9jazoKIMKgwqDCoMKgwqDCoMKgIHNwaW5fdW5sb2Nr
X2JoKCZhci0+ZGF0YV9sb2NrKTsKfQoKLS0tLS0tLS0tLS0KCmRtZXNnOgoKClsgMTc1OC43Mzk5
MzldIGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiB3bWkgZXZlbnQgYmVhY29uIHNlbmQsIHZkZXYt
aWQ6IAowwqAgcnY6IDAKWyAxNzU4Ljc1MDUyMl0gYXRoMTBrX3BjaSAwMDAwOjAxOjAwLjA6IHdt
aSBldmVudCBiZWFjb24tdHgtY29tcGxldGUsIAp2ZGV2LWlkOiAwwqAgY29tcGxldGlvbi1zdGF0
dXM6IDB4MCAoT0spIHRyaWVkOiAxIGZhaWxlZDogMCByYXRlY29kZTogMHgzIApyYXRlZmxhZ3M6
IDB4MMKgIHRzRmxhZ3M6IDB4MApbIDE3NTguNzcyNjQ3XSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAu
MDogV01JX1VQREFURV9TVEFUU19FVkVOVElEClsgMTc1OC44NDIzNDhdIGF0aDEwa19wY2kgMDAw
MDowMTowMC4wOiB3bWkgZXZlbnQgYmVhY29uIHNlbmQsIHZkZXYtaWQ6IAowwqAgcnY6IDAKWyAx
NzU4Ljg1MzA2Ml0gYXRoMTBrX3BjaSAwMDAwOjAxOjAwLjA6IHdtaSBldmVudCBiZWFjb24tdHgt
Y29tcGxldGUsIAp2ZGV2LWlkOiAwwqAgY29tcGxldGlvbi1zdGF0dXM6IDB4MCAoT0spIHRyaWVk
OiAxIGZhaWxlZDogMCByYXRlY29kZTogMHgzIApyYXRlZmxhZ3M6IDB4MMKgIHRzRmxhZ3M6IDB4
MApbIDE3NTguOTQ0NzU5XSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogd21pIGV2ZW50IGJlYWNv
biBzZW5kLCB2ZGV2LWlkOiAKMMKgIHJ2OiAwClsgMTc1OC45NTU1MDFdIGF0aDEwa19wY2kgMDAw
MDowMTowMC4wOiB3bWkgZXZlbnQgYmVhY29uIHNlbmQsIHZkZXYtaWQ6IAowwqAgcnY6IDAKWyAx
NzU4Ljk1NTUyNl0gYXRoMTBrX3BjaSAwMDAwOjAxOjAwLjA6IHdtaSBldmVudCBiZWFjb24gc2Vu
ZCwgdmRldi1pZDogCjDCoCBydjogMApbIDE3NTguOTU1NTQ2XSBhdGgxMGtfcGNpIDAwMDA6MDE6
MDAuMDogd21pIGV2ZW50IGJlYWNvbiBzZW5kLCB2ZGV2LWlkOiAKMMKgIHJ2OiAtMTEKWyAxNzU4
Ljk1NTU1OV0gYXRoMTBrX3BjaSAwMDAwOjAxOjAwLjA6IFNXQkEgb3ZlcnJ1biBvbiB2ZGV2IDAs
IHNraXBwZWQgCm9sZCBiZWFjb24KWyAxNzU4Ljk2MzAzMl0gYXRoMTBrX3BjaSAwMDAwOjAxOjAw
LjA6IHdtaSBldmVudCBiZWFjb24gc2VuZCwgdmRldi1pZDogCjDCoCBydjogLTExClsgMTc1OC45
NjMwNDhdIGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiBTV0JBIG92ZXJydW4gb24gdmRldiAwLCBz
a2lwcGVkIApvbGQgYmVhY29uClsgMTc1OC45NzA0NjhdIGF0aDEwa19wY2kgMDAwMDowMTowMC4w
OiB3bWkgZXZlbnQgYmVhY29uIHNlbmQsIHZkZXYtaWQ6IAowwqAgcnY6IC0xMQpbIDE3NTguOTcw
NDgxXSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tp
cHBlZCAKb2xkIGJlYWNvbgpbIDE3NTguOTc3OTE4XSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDog
d21pIGV2ZW50IGJlYWNvbiBzZW5kLCB2ZGV2LWlkOiAKMMKgIHJ2OiAtMTEKWyAxNzU4Ljk3Nzkz
M10gYXRoMTBrX3BjaSAwMDAwOjAxOjAwLjA6IFNXQkEgb3ZlcnJ1biBvbiB2ZGV2IDAsIHNraXBw
ZWQgCm9sZCBiZWFjb24KWyAxNzU4Ljk4NTM3MF0gYXRoMTBrX3BjaSAwMDAwOjAxOjAwLjA6IHdt
aSBldmVudCBiZWFjb24gc2VuZCwgdmRldi1pZDogCjDCoCBydjogLTExClsgMTc1OC45ODc4Mzdd
IGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiB3bWkgZXZlbnQgYmVhY29uIHNlbmQsIHZkZXYtaWQ6
IAowwqAgcnY6IDAKWyAxNzU4Ljk4Nzk3MV0gYXRoMTBrX3BjaSAwMDAwOjAxOjAwLjA6IHdtaSBl
dmVudCBiZWFjb24gc2VuZCwgdmRldi1pZDogCjDCoCBydjogLTExClsgMTc1OC45ODc5ODZdIGF0
aDEwa19wY2kgMDAwMDowMTowMC4wOiBTV0JBIG92ZXJydW4gb24gdmRldiAwLCBza2lwcGVkIApv
bGQgYmVhY29uClsgMTc1OC45OTU0NTldIGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiB3bWkgZXZl
bnQgYmVhY29uIHNlbmQsIHZkZXYtaWQ6IAowwqAgcnY6IC0xMQpbIDE3NTguOTk1NDc1XSBhdGgx
MGtfcGNpIDAwMDA6MDE6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgc2tpcHBlZCAKb2xk
IGJlYWNvbgpbIDE3NTkuMDAyOTEwXSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogd21pIGV2ZW50
IGJlYWNvbiBzZW5kLCB2ZGV2LWlkOiAKMMKgIHJ2OiAtMTEKWyAxNzU5LjAwMjkyNl0gYXRoMTBr
X3BjaSAwMDAwOjAxOjAwLjA6IFNXQkEgb3ZlcnJ1biBvbiB2ZGV2IDAsIHNraXBwZWQgCm9sZCBi
ZWFjb24KWyAxNzU5LjAxMDM0Ml0gYXRoMTBrX3BjaSAwMDAwOjAxOjAwLjA6IHdtaSBldmVudCBi
ZWFjb24gc2VuZCwgdmRldi1pZDogCjDCoCBydjogLTExClsgMTc1OS4wMTAzNjBdIGF0aDEwa19w
Y2kgMDAwMDowMTowMC4wOiB3bWkgZXZlbnQgYmVhY29uIHNlbmQsIHZkZXYtaWQ6IAowwqAgcnY6
IDAKWyAxNzU5LjAxMDM3OF0gYXRoMTBrX3BjaSAwMDAwOjAxOjAwLjA6IHdtaSBldmVudCBiZWFj
b24gc2VuZCwgdmRldi1pZDogCjDCoCBydjogLTExClsgMTc1OS4wMTAzOTFdIGF0aDEwa19wY2kg
MDAwMDowMTowMC4wOiBTV0JBIG92ZXJydW4gb24gdmRldiAwLCBza2lwcGVkIApvbGQgYmVhY29u
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
