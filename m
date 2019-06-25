Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AD125532B
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Jun 2019 17:19:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pjS85TzB9ieD9Ho9sUms4YSRpYemch+Xnbgw6r8WqPo=; b=IcKL48hdOBe0MVqoZFMzDLQSj
	FwwW7w/Irl2DY+fmWz1phmxWHWZipxusabETlc6lYMYD5UNfw7ek8JC/41mgcAIA3KAbXnotClDei
	2kuYPaNlZSiq6pRgXV3w9s0w15otv2+8o52nIZbV2vopEUoCpXRQjBVkGL50Luflgi6mPo/lbSyAv
	L8onUNjFPFDsAqNLOSTWxW4IsQPuPntryilc4Do2DjZNxc1eyQBS20NAhZ9raANhrNQ+7p7ZcheIf
	LUyRN1uaCzHhFYoZd5Jpy6HLNCw8BjzgQZLWYlqgzdk6odebzwMrMIWgrAjJbEj0G7h2pJ7K6bjhT
	zrjdgrhmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnE1-0001v0-DT; Tue, 25 Jun 2019 15:19:13 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnDQ-0001TL-KR
 for openwrt-devel@lists.openwrt.org; Tue, 25 Jun 2019 15:18:39 +0000
Received: by mail-ed1-x543.google.com with SMTP id z25so27672765edq.9
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Jun 2019 08:18:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=MkJr3WIN8y17GIi3SvU2rTf4Zy5hHWYPWCzLaVoYEXY=;
 b=dZu7F5zTY++oo2qEZXF2JSrMsMkTx47cRmb/f6nK3Q4Ip+NqUzBCsccfYTaPsoUkm4
 J6yU3EZ070h7AEVuEkgG0q+ScYKtUcefiQVJyeTWpKADEFJHMPE3S7pJstY4wN44GLUg
 1f1saHjBLDicRdHAL8xN1mKQvsVHnnfl536Unkxkdf7NRZIRhi9AJFCB6i1ZwbfS/ozm
 qvT8DK2NkQHKzUR9vcWMGy4Qyo1L7hbeW4WlIqX2+h+jm5MvAx7gZ4s6zMoQGALwhPyx
 6QW7L28FIoyY7tL2R5zvApq2kU3kAsprCgca92o3c7KK1s7z2gBDC0lh8xzk4CGsXLSB
 87sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=MkJr3WIN8y17GIi3SvU2rTf4Zy5hHWYPWCzLaVoYEXY=;
 b=RDKY2FelJVhoRWYGLngPHL1wNJ+J4yP2fxwGg3czwmr3EjxlLsjvHj9JCInqnAtkyA
 d3c94GEVY4Rl8MRxpDQmmKSq++vaqP/AoGchdNLvOkUEzU2s3efPMLEL4Yhh04nXP496
 FUZprtTqXdVRr4Inm+iKTHREZ8XayIHyIn7zYbjT2xbbDkmLQTHVy0+/klCoQ3wBkSzM
 P1NujbbeWTe+oSleS94mnO/fa0vbhDg1GUYi8BvjZy+wD3eRiIITrksACXStamyAF+5k
 uRh0YefMYyR23bIOrf+180vUA3LekaoCp+25WC8Yq5du21nq73KIWxl70OkKyJ29Vok0
 Vv/Q==
X-Gm-Message-State: APjAAAWYkudYp1dnuLqQb0nUYrBnk9ug1l69e0R3bxeZCEUWHhWDNi23
 hfBHIz3rmJrsPYj2LhyJnJskWDP6N/D+Pw==
X-Google-Smtp-Source: APXvYqxEGY6S3oAQOvfcYTBZ/zZMgh1Txv8tRK78GHWxLpOSRhKwPkuQ97iJH7bWra+IhxeIFCdDYw==
X-Received: by 2002:a50:9646:: with SMTP id y64mr2714774eda.111.1561475914878; 
 Tue, 25 Jun 2019 08:18:34 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id m39sm3351343edm.96.2019.06.25.08.18.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 08:18:34 -0700 (PDT)
To: Ben Greear <greearb@candelatech.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
References: <abe6feb7-80a9-4587-db0b-7f3a37a792d8@ncentric.com>
 <7a68db11-1026-e576-2c26-425ea85ef609@candelatech.com>
 <93bc6089-e313-f51f-06e9-4c0b8f36f7e7@ncentric.com>
 <3d95432a-db21-d4ef-24c4-fc3659fee0a1@candelatech.com>
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <19146df0-d50b-1b03-dd2c-668f852db4c7@ncentric.com>
Date: Tue, 25 Jun 2019 17:18:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <3d95432a-db21-d4ef-24c4-fc3659fee0a1@candelatech.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_081836_744480_8920C680 
X-CRM114-Status: GOOD (  22.58  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Ck9uIDI1LjA2LjE5IDE1OjU0LCBCZW4gR3JlZWFyIHdyb3RlOgo+Cj4KPiBPbiAwNi8yNS8yMDE5
IDAyOjUzIEFNLCBLb2VuIFZhbmRlcHV0dGUgd3JvdGU6Cj4+Cj4+IE9uIDI0LjA2LjE5IDIyOjA0
LCBCZW4gR3JlZWFyIHdyb3RlOgo+Pj4gT24gNi8yNC8xOSA4OjMyIEFNLCBLb2VuIFZhbmRlcHV0
dGUgd3JvdGU6Cj4+Pj4gSGkgQmVuLAo+Pj4+IEhpIEFsbCwKPj4+Pgo+Pj4+IFNvIEknbSBnb2lu
ZyB0byBnaXZlIHRoaXMgYW5vdGhlciB0cnkgLi4KPj4+PiBBcyB0aGUgSUJTUyBmdW5jdGlvbmFs
aXR5IGlzIGhlYXZpbHkgYWR2ZXJ0aXNlZCBhcyBhIGRlbHRhIHRvIAo+Pj4+IG1haW5saW5lLCBp
dCB3b3VsZCBiZSB2ZXJ5IG5pY2UgdG8gZ2V0IGl0IHdvcmtpbmcgYWxzbyA6KQo+Pj4+Cj4+Pj4g
VGVzdGluZyB0aGUgbGF0ZXN0IGF0aDEway1jdCBkcml2ZXIgYW5kIGZpcm13YXJlIHNlZW1zIHRv
IGJlIGEgc3RlcCAKPj4+PiBiYWNrIGNvbXBhcmVkIHRvIHJvdWdobHkgYSBtb250aCBhZ28uCj4+
Pj4KPj4+PiBJJ20gY3VycmVudGx5IHNlZWluZyB0aGUgZmlybXdhcmUgY3Jhc2hpbmcsIHdoaWNo
IHdhcyBub3QgdGhlIGNhc2UgCj4+Pj4gYmVmb3JlOgo+Pj4+Cj4+Pj4KPj4+PiBhdGgxMGstY3Qg
KyBodHQtZnc6Cj4+Pj4KPj4+PiBodHRwczovL3Bhc3RlYmluLmNvbS9yYXcvN1N5OXl4NnMKPj4+
Cj4+PiBMb29rcyBsaWtlIGZpcm13YXJlIHJhbiBvdXQgb2Ygc29tZSBXTUkgZXZlbnQgYnVmZmVy
cyBhbmQgY3Jhc2hlZCAKPj4+IGluc3RlYWQgb2YgaGFuZGxpbmcKPj4+IGl0IG1vcmUgZ3JhY2Vm
dWxseS4KPj4+Cj4+PiBQbGVhc2UgdHJ5IHRoZSBhdHRhY2hlZCAodW50ZXN0ZWQpIGZpcm13YXJl
IGFuZCBzZWUgaWYgaXQgYmVoYXZlcyAKPj4+IGJldHRlci4KPj4+Cj4+IEhpIEJlbiwKPj4KPj4g
MSBzdGVwIGZvcndhcmQgaGVyZS4KPj4KPj4gSSdtIG5vdCBzZWVpbmcgY3Jhc2hlcyBhbnltb3Jl
IHVzaW5nIHRoZSB0ZXN0LWZpcm13YXJlLgo+Pgo+PiBodHRwczovL3Bhc3RlYmluLmNvbS9yYXcv
NFplWHU3aXcKPj4KPj4KPj4gSSd2ZSBsaW5rZWQgdXAgMiBJQlNTIGRldmljZXMgKHdhdmUgMSwg
VkhUODApCj4+Cj4+IE9MU1IgdHJhZmZpYyAoVURQKSB3b3JrcyBhbmQgcGFja2V0cyBoZXJlIGFy
ZSBuaWNlbHkgZ29pbmcgYmFjayAmIGZvcnRoLgo+Pgo+PiBTaW1wbHkgcGluZ2luZyAoSUNNUCkg
YmV0d2VlbiB0aGUgMiBkZXZpY2VzIGRvZXMgbm90IHdvcmsuCj4+Cj4+IFdoZW4gc2VuZGluZyAx
MDAgcGluZ3MsICg2NCBieXRlIGxhcmdlKcKgIHNvbWV0aW1lcyAxIGdldHMgdGhyb3VnaCAuLiAK
Pj4gYnV0IHdpdGggYSBsYXRlbmN5IG9mID4gNTAwbXMKPj4KPj4KPj4gSSB0aGluayBpZiB0aGUg
c3BsYXQgYW5kIHRoZSBiZWFjb24gc3BhbSBiZWxvdyBjb3VsZCBiZSBmaXhlZCAuLiB0aGlzIAo+
PiB3b3VsZCBiZSBhIG1ham9yIHN0ZXAgZm9yd2FyZDoKPj4KPj4gW8KgwqAgMzAuMzI4NDIzXSAt
LS0tLS0tLS0tLS1bIGN1dCBoZXJlIF0tLS0tLS0tLS0tLS0KPj4gW8KgwqAgMzAuMzMzMjUxXSBX
QVJOSU5HOiBDUFU6IDAgUElEOiAxNTc4IGF0IAo+PiAvbW50L3JhbWRpc2sva29lbi9maXJtd2Fy
ZS9idWlsZHMvZ2VuZXJpY19yYjkyMi9idWlsZF9kaXIvdGFyZ2V0LW1pcHNfMjRrY19tdXNsL2xp
bnV4LWFyNzF4eF9taWtyb3Rpay9hdGgxMGstY3QtMjAxOS0wNS0wOC1mOThiNmRjNC9hdGgxMGst
NC4xOS9tYWMuYzo2NTYzIAo+PiBhdGgxMGtfbWFjX3ZpZl9iZWFjb25fZnJlZSsweGM3Yy8weDEx
NWMgW2F0aDEwa19jb3JlXQo+PiBbwqDCoCAzMC4zNTU2MzZdIE1vZHVsZXMgbGlua2VkIGluOiBt
YnQgYXRoOWsgYXRoOWtfY29tbW9uIHFjc2VyaWFsIAo+PiBwcHBvZSBwcHBfYXN5bmMgb3B0aW9u
IGNkY19tYmltIGF0aDlrX2h3IGF0aDEwa19wY2kgYXRoMTBrX2NvcmUgYXRoIAo+PiB1c2Jfd3dh
biBzaWVycmFfbmV0IHNpZXJyYSBybmRpc19ob3N0IHFtaV93d2FuIHBwcG94IHBwcF9nZW5lcmlj
IAo+PiBtYWM4MDIxMSBpcHRhYmxlX25hdCBpcHRhYmxlX21hbmdsZSBpcHRhYmxlX2ZpbHRlciBp
cHRfUkVKRUNUIAo+PiBpcHRfTUFTUVVFUkFERSBpcF90YWJsZXMgaHVhd2VpX2NkY19uY20gZnRk
aV9zaW8gY2ZnODAyMTEgY2RjX3N1YnNldCAKPj4gY2RjX25jbSBjZGNfZXRoZXIgeHRfdGltZSB4
dF90Y3B1ZHAgeHRfc3RhdGUgeHRfbmF0IHh0X211bHRpcG9ydCAKPj4geHRfbWFyayB4dF9tYWMg
eHRfbGltdAo+PiBbwqDCoCAzMC40MjczMzFdwqAgbmxzX3V0ZjggbmxzX2lzbzg4NTlfMSBubHNf
Y3A0MzcgYXV0aGVuYyAKPj4gZWhjaV9wbGF0Zm9ybSBzZF9tb2Qgc2NzaV9tb2QgZWhjaV9oY2Qg
Z3Bpb19idXR0b25faG90cGx1ZyBleHQ0IAo+PiBtYmNhY2hlIGpiZDIgdXNiY29yZSBubHNfYmFz
ZSB1c2JfY29tbW9uIHB0cCBwcHNfY29yZSBtaWkgYWVhZCAKPj4gY3J5cHRvX251bGwgY3J5cHRv
bWdyIGNyYzMyY19nZW5lcmljIGNyeXB0b19oYXNoCj4+IFvCoMKgIDMwLjQ0ODAxN10gQ1BVOiAw
IFBJRDogMTU3OCBDb21tOiB3cGFfc3VwcGxpY2FudCBOb3QgdGFpbnRlZCAKPj4gNC4xNC4xMjkg
IzAKPgo+IFBsZWFzZSBsb29rIGluIHlvdXIgY29kZSBhbmQgbGV0IG1lIGtub3cgdGhlIHNvdXJj
ZSBhcm91bmQgdGhlIGxpbmUgaW4gCj4gbWFjLmMgKDY1NjMpIHRoYXQgaXMgc3BsYXR0aW5nLgo+
Cj4gQWxzbywgeW91IG1pZ2h0IGdyYWIgdGhlIGxhdGVzdCBhdGgxMGstY3QgcmVwbywgaXQgaGFz
IGEgdHdlYWsgdGhhdCAKPiBtaWdodCBmaXggdGhlIFNXQkEgb3ZlcnJ1bgo+IG1lc3NhZ2VzLgo+
Cj4gaHR0cHM6Ly9naXRodWIuY29tL2dyZWVhcmIvYXRoMTBrLWN0Cj4KPiBUaGFua3MsCj4gQmVu
CgpDdXJyZW50bHkgYnVpbGRpbmcgbGF0ZXN0IG9wZW53cnQgbWFzdGVyLCB1cGRhdGVkIHRvIHRo
ZSBsYXRlc3QgCmF0aDEway1jdCBjb21taXQgYW5kIHRoZSB0ZXN0IGZ3CgpXaWxsIGxldCB5b3Ug
a25vdyB0aGUgcmVzdWx0cyBhc2FwLgoKVGhhbmtzLAoKS29lbgoKPgo+PiBbwqDCoCAzMC40NTQ5
MDZdIFN0YWNrIDogODA1MDAwMDAgODA0YzA4NzAgMDAwMDAwMDAgMDAwMDAwMDAgODA0OTU0MDQg
Cj4+IDg2ZmM1YTI0IDg2MDY0ODVjIDgwNGU3MzA3Cj4+IFvCoMKgIDMwLjQ2MzQwMl3CoMKgwqDC
oMKgwqDCoMKgIDgwNDkxNWM4IDAwMDAwNjJhIDgwNTQzN2QwIDAwMDAxOWEzIDg3ZDFlZDI4IAo+
PiAwMDAwMDAwMSA4NmZjNTlkOCBlYmIwNTllOAo+PiBbwqDCoCAzMC40NzE4ODBdwqDCoMKgwqDC
oMKgwqDCoCAwMDAwMDAwMCAwMDAwMDAwMCA4MDU0MDAwMCAwMDAwNjhlOCAwMDAwMDAwMCAKPj4g
MDAwMDAwMDAgMDAwMDAwMDcgMDAwMDAwMDAKPj4gW8KgwqAgMzAuNDgwMzczXcKgwqDCoMKgwqDC
oMKgwqAgMDAwMDAxMjMgZjU1YjI1MzYgMDAwMDAxMjIgMDAwMDAwMDAgODAwMDAwMDAgCj4+IDAw
MDAwMDAwIDg3MTUyNTA0IDg3MTBjY2M0Cj4+IFvCoMKgIDMwLjQ4ODg2M13CoMKgwqDCoMKgwqDC
oMKgIDAwMDAwMDA5IDAwMDAxOWEzIDg3ZDFlZDI4IDg3NmZkMDAwIDAwMDAwMDAwIAo+PiA4MDJh
Mzk2NCAwMDAwMDAwMCA4MDU0MDAwMAo+PiBbwqDCoCAzMC40OTczNTVdwqDCoMKgwqDCoMKgwqDC
oCAuLi4KPj4gW8KgwqAgMzAuNDk5ODM5XSBDYWxsIFRyYWNlOgo+PiBbwqDCoCAzMC41MDIzMjBd
IFs8ODAwNmM3YWM+XSBzaG93X3N0YWNrKzB4NTgvMHgxMDAKPj4gW8KgwqAgMzAuNTA2ODM4XSBb
PDgwMDg2ZGUwPl0gX193YXJuKzB4ZTQvMHgxMTgKPj4gW8KgwqAgMzAuNTEwOTk0XSBbPDgwMDg2
ZWE0Pl0gd2Fybl9zbG93cGF0aF9udWxsKzB4MWMvMHgyOAo+PiBbwqDCoCAzMC41MTYxNThdIFs8
ODcxMGNjYzQ+XSBhdGgxMGtfbWFjX3ZpZl9iZWFjb25fZnJlZSsweGM3Yy8weDExNWMgCj4+IFth
dGgxMGtfY29yZV0KPj4gW8KgwqAgMzAuNTIzNTA1XSAtLS1bIGVuZCB0cmFjZSA4M2ZkMzU3MWUz
MTAyNDVhIF0tLS0KPj4gW8KgwqAgMzMuMTcyODUyXSB3bGFuMDogVHJpZ2dlciBuZXcgc2NhbiB0
byBmaW5kIGFuIElCU1MgdG8gam9pbgo+PiBbwqDCoCAzMy4yMzc0MTZdIHdsYW4wOiBUcmlnZ2Vy
IG5ldyBzY2FuIHRvIGZpbmQgYW4gSUJTUyB0byBqb2luCj4+IFvCoMKgIDMzLjI0MzMxN10gd2xh
bjA6IFRyaWdnZXIgbmV3IHNjYW4gdG8gZmluZCBhbiBJQlNTIHRvIGpvaW4KPj4gW8KgwqAgMzMu
MjQ5MjA1XSB3bGFuMDogVHJpZ2dlciBuZXcgc2NhbiB0byBmaW5kIGFuIElCU1MgdG8gam9pbgo+
PiBbwqDCoCAzMy4zMDUyMTBdIHdsYW4wOiBUcmlnZ2VyIG5ldyBzY2FuIHRvIGZpbmQgYW4gSUJT
UyB0byBqb2luCj4+IFvCoMKgIDM0LjA0OTYxNF0gd2xhbjA6IFRyaWdnZXIgbmV3IHNjYW4gdG8g
ZmluZCBhbiBJQlNTIHRvIGpvaW4KPj4gW8KgwqAgMzQuMTE1MzY5XSB3bGFuMDogVHJpZ2dlciBu
ZXcgc2NhbiB0byBmaW5kIGFuIElCU1MgdG8gam9pbgo+PiBbwqDCoCAzNC4xODk4MjNdIHdsYW4w
OiBTZWxlY3RlZCBJQlNTIEJTU0lEIGZhOjc3Ojc4OjU1OmFmOjdiIGJhc2VkIG9uIAo+PiBjb25m
aWd1cmVkIFNTSUQKPj4gW8KgwqAgMzQuMjgwNTQwXSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDog
U1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgCj4+IHNraXBwZWQgb2xkIGJlYWNvbgo+PiBbwqDCoCAz
NC4yODgwMDJdIGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiBTV0JBIG92ZXJydW4gb24gdmRldiAw
LCAKPj4gc2tpcHBlZCBvbGQgYmVhY29uCj4+IFvCoMKgIDM0LjI5NTkyNF0gYXRoMTBrX3BjaSAw
MDAwOjAxOjAwLjA6IFNXQkEgb3ZlcnJ1biBvbiB2ZGV2IDAsIAo+PiBza2lwcGVkIG9sZCBiZWFj
b24KPj4gW8KgwqAgMzQuMzAzNDA2XSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogU1dCQSBvdmVy
cnVuIG9uIHZkZXYgMCwgCj4+IHNraXBwZWQgb2xkIGJlYWNvbgo+PiBbwqDCoCAzNC4zMTA4Mzld
IGF0aDEwa19wY2kgMDAwMDowMTowMC4wOiBTV0JBIG92ZXJydW4gb24gdmRldiAwLCAKPj4gc2tp
cHBlZCBvbGQgYmVhY29uCj4+IFvCoMKgIDM0LjMxODI4MF0gYXRoMTBrX3BjaSAwMDAwOjAxOjAw
LjA6IFNXQkEgb3ZlcnJ1biBvbiB2ZGV2IDAsIAo+PiBza2lwcGVkIG9sZCBiZWFjb24KPj4gW8Kg
wqAgMzQuMzI1NzE0XSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZk
ZXYgMCwgCj4+IHNraXBwZWQgb2xkIGJlYWNvbgo+PiBbwqDCoCAzNC4zMzMxNDhdIGF0aDEwa19w
Y2kgMDAwMDowMTowMC4wOiBTV0JBIG92ZXJydW4gb24gdmRldiAwLCAKPj4gc2tpcHBlZCBvbGQg
YmVhY29uCj4+IFvCoMKgIDM0LjM0MDU2N10gYXRoMTBrX3BjaSAwMDAwOjAxOjAwLjA6IFNXQkEg
b3ZlcnJ1biBvbiB2ZGV2IDAsIAo+PiBza2lwcGVkIG9sZCBiZWFjb24KPj4gW8KgwqAgMzQuMzQ4
MDAzXSBhdGgxMGtfcGNpIDAwMDA6MDE6MDAuMDogU1dCQSBvdmVycnVuIG9uIHZkZXYgMCwgCj4+
IHNraXBwZWQgb2xkIGJlYWNvbgo+PiAuLi4KPj4gLi4uCj4+Cj4+IFRoYW5rcyBmb3IgeW91ciBz
d2lmdCByZXBseSBzbyBmYXIgYW5kIHRoZSB0ZXN0LWZpcm13YXJlLgo+Pgo+PiBSZWdhcmRzLAo+
Pgo+PiBLb2VuCj4+Cj4+Pgo+Pj4+IGF0aDEway1jdCArIG5vbi1odHQtZnc6Cj4+Pj4KPj4+PiBo
dHRwczovL3Bhc3RlYmluLmNvbS9yYXcvYnFWcVFtWHEKPj4+Pgo+Pj4+Cj4+Pj4gTWl4aW5nIHVw
c3RyZWFtIGF0aDEwayBkcml2ZXIgd2l0aCB0aGUgbm9uLWh0dCBDVCBmdyBkb2VzIG5vdCB3b3Jr
Lgo+Pj4+Cj4+Pj4gRXJyb3JzIGFyZSBzZWVuIGhlcmUgcmVnYXJkaW5nIG1pc3NpbmcgSUUncyBh
bmQgc3R1ZmYuCj4+Pj4gQWxzbyBJQlNTIGZ1bmN0aW9uYWxpdHkgaXMgbm90IHNob3duIHdoZW4g
cnVubmluZyAnaXcgbGlzdCcKPj4+Cj4+PiBJQlNTIHJlcXVpcmVzIGN0IGRyaXZlciBwbHVzIGN0
IGZpcm13YXJlLCBhdCBsZWFzdC4KPj4KPj4gQWgsIG9rLiA6LSkKPj4KPj4gVGhvdWdodCBpdCB3
YXMgcG9zc2libGUgYmFzZWQgb24gdGhpcyBvbmUgOgo+Pgo+PiBodHRwczovL3d3dy5zcGluaWNz
Lm5ldC9saXN0cy9saW51eC13aXJlbGVzcy9tc2cxMzc4MjcuaHRtbAo+Pgo+Pgo+Pj4KPj4+IEkn
ZCBleHBlY3QgdGhlIHJlZ3VsYXIgZHJpdmVyIHRvIHdvcmsgaW4gbm9ybWFsIFNUQS9BUCBtb2Rl
LCB0aG91Z2ggCj4+PiBpdCB3b3VsZCBsaWtlbHkKPj4+IHdhcm4gYWJvdXQgSUVzLsKgIFNob3Vs
ZCBiZSB3YXJuaW5nIG9ubHkgdGhvdWdoLgo+Pj4KPj4+IFRoYW5rcywKPj4+IEJlbgo+Pj4KPj4+
Pgo+Pj4+Cj4+Pj4gS2luZCBSZWdhcmRzLAo+Pj4+Cj4+Pj4gS29lbgo+Pj4+Cj4+Pgo+Pj4KPj4K
PgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3Blbndy
dC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRw
czovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
