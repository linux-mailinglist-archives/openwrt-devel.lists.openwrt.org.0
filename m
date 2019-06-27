Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A16A6584DE
	for <lists+openwrt-devel@lfdr.de>; Thu, 27 Jun 2019 16:50:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vIsdSFQg5umNGkgUKmjHona31kIXw2RFKrHIDWcocqQ=; b=orEfQGrxwJUFQNuTv1vnioCUB
	qYd+mJzgZsaz+3KYHcvn6uNWPCTHGpbQBUzIKOHpPDs4ht31BRC6RjSnOuU/QhwNhuIaN8eSlL1TD
	FtPwlS9aBstSSY7hd0JyyxAwlqVHOPfOJ/qGSfl9Q1ThvWNMEdhV0Ikj8ipAf0Lwqy0EIH6ZhqVbl
	Xu2gjOTwmZIO0Zuf1e6t4rnwb6Pe/3Qm6Mz5/iIIhLkRGdhOae0VnrMJQPOH0p37Dmaj2AbRWav7g
	V8dIo1WhQL6tSmVO0IZVNBQgJ+/oq6uLFLsyDdO6lf8cO/hf8GTfdLh7Qv3VYvRTgoKHKtW+ppDRg
	JVBT8T9rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgVjN-0005O2-Q7; Thu, 27 Jun 2019 14:50:33 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgVil-000403-LO
 for openwrt-devel@lists.openwrt.org; Thu, 27 Jun 2019 14:49:59 +0000
Received: by mail-ed1-x543.google.com with SMTP id a14so7323026edv.12
 for <openwrt-devel@lists.openwrt.org>; Thu, 27 Jun 2019 07:49:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=hQuL/pj30bhmGy/9PKBS3w5MzicYND6wUneIZcDf5Bk=;
 b=Ab3dblkQ//xFaVRW6ErGUoUyfzfuSxpoxldvKwWZUYU8HfhTihsFXcIqWEU7eadxDS
 Aa/KZMypRul6wzmVyhIMUhy32uRbcFh1/APvjPuyP7MqU8lJchBewKadUgYfggT7RFwo
 /ywUAcfAPi2HuGMuxdqXKzIKVN4bbjO/OMUCcRZMJxIsjOm8/fJKpNCimIsDezg4rsob
 9mNrqRy7LGgWmQKJMZPSgddoI+KAnm1hKWUYbNQDYir9iOjVNHilQ3+89jJmDQpb/eq3
 0/zVAf9wAwyg5wfEQh5YkKdrH3SYMcVuVwPebU7XWC0BrPEOYXxVpGzntJSdD5AIYZsW
 wIqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=hQuL/pj30bhmGy/9PKBS3w5MzicYND6wUneIZcDf5Bk=;
 b=Twfjp6JsIs22OEj/h3qUu4+3on1/AQ7uT9LRSeVqd+TYHcr+xb7IlfyWkeTeFptNuO
 U/9fvZM1hEsUvoW+TPmtvx4LZS4A+Vn1JbrZuf1OszdKUhjW6a6zun6PACc9uMB0a60V
 JNR7Fx8AchPCPd5M7XocMm5qCCtfoiZZPyCDSGhZ5Lx5BKSeNvZgagWL3A+y1swplPS/
 hVpgv3IAT915FvwPB59zgOaTnXfN5GYMkYZxsn4L3P7YCDXwzyw4gj9Koc0Vjzhtas2G
 7ZXuxL5/wf2MyuEALmyI41VK8vZDg0CIf/W9ppGyaOIwdohDlWZDPc3PeOg8F3pzsjrq
 Iw+Q==
X-Gm-Message-State: APjAAAWhIjjQBe4ULsV6wiBcbj5DAnD/m1o5zgkvGvGe/g3aH5+sdZai
 M+15XKjGx3HBF20umI/8fP0pB+uqeu9T6A==
X-Google-Smtp-Source: APXvYqzM1HQr4+CK+SnUXcsqEuf6+P0I5ZwPrBH3gqjXPFmuhRb8ZPpSpoUh8NfD/ZEvfj21TYbxoA==
X-Received: by 2002:a17:906:5243:: with SMTP id
 y3mr3520555ejm.88.1561646993673; 
 Thu, 27 Jun 2019 07:49:53 -0700 (PDT)
Received: from [192.168.3.176] (d515300d8.static.telenet.be. [81.83.0.216])
 by smtp.gmail.com with ESMTPSA id c3sm466007ejo.43.2019.06.27.07.49.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 07:49:53 -0700 (PDT)
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
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
Message-ID: <a53a95b7-b98d-9c07-9688-0f444d9c5429@ncentric.com>
Date: Thu, 27 Jun 2019 16:49:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <f51ea660-d382-7d31-3ecb-f4beddfb997f@candelatech.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_074955_954067_26AA5416 
X-CRM114-Status: GOOD (  33.06  )
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

Ck9uIDI3LjA2LjE5IDE2OjI0LCBCZW4gR3JlZWFyIHdyb3RlOgo+IE9uIDYvMjcvMTkgNzoxNyBB
TSwgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+Pgo+PiBPbiAyNi4wNi4xOSAxODozOSwgQmVuIEdy
ZWVhciB3cm90ZToKPj4+IE9uIDYvMjYvMTkgOToyOCBBTSwgS29lbiBWYW5kZXB1dHRlIHdyb3Rl
Ogo+Pj4+Cj4+Pj4gT24gMjYuMDYuMTkgMTg6MTYsIEJlbiBHcmVlYXIgd3JvdGU6Cj4+Pj4+IE9u
IDYvMjYvMTkgMjowMiBBTSwgS29lbiBWYW5kZXB1dHRlIHdyb3RlOgo+Pj4+Pj4KPj4+Pj4+IE9u
IDI1LjA2LjE5IDE1OjU0LCBCZW4gR3JlZWFyIHdyb3RlOgo+Pj4+Pj4+Cj4+Pj4+Pj4KPj4+Pj4+
PiBPbiAwNi8yNS8yMDE5IDAyOjUzIEFNLCBLb2VuIFZhbmRlcHV0dGUgd3JvdGU6Cj4+Pj4+Pj4+
Cj4+Pj4+Pj4+IE9uIDI0LjA2LjE5IDIyOjA0LCBCZW4gR3JlZWFyIHdyb3RlOgo+Pj4+Pj4+Pj4g
T24gNi8yNC8xOSA4OjMyIEFNLCBLb2VuIFZhbmRlcHV0dGUgd3JvdGU6Cj4+Pj4+Pj4+Pj4gSGkg
QmVuLAo+Pj4+Pj4+Pj4+IEhpIEFsbCwKPj4+Pj4+Pj4+Pgo+Pj4+Pj4+Pj4+IFNvIEknbSBnb2lu
ZyB0byBnaXZlIHRoaXMgYW5vdGhlciB0cnkgLi4KPj4+Pj4+Pj4+PiBBcyB0aGUgSUJTUyBmdW5j
dGlvbmFsaXR5IGlzIGhlYXZpbHkgYWR2ZXJ0aXNlZCBhcyBhIGRlbHRhIHRvIAo+Pj4+Pj4+Pj4+
IG1haW5saW5lLCBpdCB3b3VsZCBiZSB2ZXJ5IG5pY2UgdG8gZ2V0IGl0IHdvcmtpbmcgYWxzbyA6
KQo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4gVGVzdGluZyB0aGUgbGF0ZXN0IGF0aDEway1jdCBkcml2
ZXIgYW5kIGZpcm13YXJlIHNlZW1zIHRvIGJlIAo+Pj4+Pj4+Pj4+IGEgc3RlcCBiYWNrIGNvbXBh
cmVkIHRvIHJvdWdobHkgYSBtb250aCBhZ28uCj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBJJ20gY3Vy
cmVudGx5IHNlZWluZyB0aGUgZmlybXdhcmUgY3Jhc2hpbmcsIHdoaWNoIHdhcyBub3QgdGhlIAo+
Pj4+Pj4+Pj4+IGNhc2UgYmVmb3JlOgo+Pj4+Pj4+Pj4+Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBh
dGgxMGstY3QgKyBodHQtZnc6Cj4+Pj4+Pj4+Pj4KPj4+Pj4+Pj4+PiBodHRwczovL3Bhc3RlYmlu
LmNvbS9yYXcvN1N5OXl4NnMKPj4+Pj4+Pj4+Cj4+Pj4+Pj4+PiBMb29rcyBsaWtlIGZpcm13YXJl
IHJhbiBvdXQgb2Ygc29tZSBXTUkgZXZlbnQgYnVmZmVycyBhbmQgCj4+Pj4+Pj4+PiBjcmFzaGVk
IGluc3RlYWQgb2YgaGFuZGxpbmcKPj4+Pj4+Pj4+IGl0IG1vcmUgZ3JhY2VmdWxseS4KPj4+Pj4+
Pj4+Cj4+Pj4+Pj4+PiBQbGVhc2UgdHJ5IHRoZSBhdHRhY2hlZCAodW50ZXN0ZWQpIGZpcm13YXJl
IGFuZCBzZWUgaWYgaXQgCj4+Pj4+Pj4+PiBiZWhhdmVzIGJldHRlci4KPj4+Pj4+Pj4+Cj4+Pj4+
Pj4+IEhpIEJlbiwKPj4+Pj4+Pj4KPj4+Pj4+Pj4gMSBzdGVwIGZvcndhcmQgaGVyZS4KPj4+Pj4+
Pj4KPj4+Pj4+Pj4gSSdtIG5vdCBzZWVpbmcgY3Jhc2hlcyBhbnltb3JlIHVzaW5nIHRoZSB0ZXN0
LWZpcm13YXJlLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBodHRwczovL3Bhc3RlYmluLmNvbS9yYXcvNFpl
WHU3aXcKPj4+Pj4+Pj4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gSSd2ZSBsaW5rZWQgdXAgMiBJQlNTIGRl
dmljZXMgKHdhdmUgMSwgVkhUODApCj4+Pj4+Pj4+Cj4+Pj4+Pj4+IE9MU1IgdHJhZmZpYyAoVURQ
KSB3b3JrcyBhbmQgcGFja2V0cyBoZXJlIGFyZSBuaWNlbHkgZ29pbmcgYmFjayAKPj4+Pj4+Pj4g
JiBmb3J0aC4KPj4+Pj4+Pj4KPj4+Pj4+Pj4gU2ltcGx5IHBpbmdpbmcgKElDTVApIGJldHdlZW4g
dGhlIDIgZGV2aWNlcyBkb2VzIG5vdCB3b3JrLgo+Pj4+Pj4+Pgo+Pj4+Pj4+PiBXaGVuIHNlbmRp
bmcgMTAwIHBpbmdzLCAoNjQgYnl0ZSBsYXJnZSnCoCBzb21ldGltZXMgMSBnZXRzIAo+Pj4+Pj4+
PiB0aHJvdWdoIC4uIGJ1dCB3aXRoIGEgbGF0ZW5jeSBvZiA+IDUwMG1zCj4+Pj4+Pj4+Cj4+Pj4+
Pj4+Cj4+Pj4+Pj4+IEkgdGhpbmsgaWYgdGhlIHNwbGF0IGFuZCB0aGUgYmVhY29uIHNwYW0gYmVs
b3cgY291bGQgYmUgZml4ZWQgCj4+Pj4+Pj4+IC4uIHRoaXMgd291bGQgYmUgYSBtYWpvciBzdGVw
IGZvcndhcmQ6Cj4+Pj4+Pj4+Cj4+Pj4+Pj4+IFvCoMKgIDMwLjMyODQyM10gLS0tLS0tLS0tLS0t
WyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCj4+Pj4+Pj4+IFvCoMKgIDMwLjMzMzI1MV0gV0FSTklO
RzogQ1BVOiAwIFBJRDogMTU3OCBhdCAKPj4+Pj4+Pj4gL21udC9yYW1kaXNrL2tvZW4vZmlybXdh
cmUvYnVpbGRzL2dlbmVyaWNfcmI5MjIvYnVpbGRfZGlyL3RhcmdldC1taXBzXzI0a2NfbXVzbC9s
aW51eC1hcjcxeHhfbWlrcm90aWsvYXRoMTBrLWN0LTIwMTktMDUtMDgtZjk4YjZkYzQvYXRoMTBr
LTQuMTkvbWFjLmM6NjU2MyAKPj4+Pj4+Pj4gYXRoMTBrX21hY192aWZfYmVhY29uX2ZyZWUrMHhj
N2MvMHgxMTVjIFthdGgxMGtfY29yZV0KPj4+Pj4+Pj4gW8KgwqAgMzAuMzU1NjM2XSBNb2R1bGVz
IGxpbmtlZCBpbjogbWJ0IGF0aDlrIGF0aDlrX2NvbW1vbiAKPj4+Pj4+Pj4gcWNzZXJpYWwgcHBw
b2UgcHBwX2FzeW5jIG9wdGlvbiBjZGNfbWJpbSBhdGg5a19odyBhdGgxMGtfcGNpIAo+Pj4+Pj4+
PiBhdGgxMGtfY29yZSBhdGggdXNiX3d3YW4gc2llcnJhX25ldCBzaWVycmEgcm5kaXNfaG9zdCBx
bWlfd3dhbiAKPj4+Pj4+Pj4gcHBwb3ggcHBwX2dlbmVyaWMgbWFjODAyMTEgaXB0YWJsZV9uYXQg
aXB0YWJsZV9tYW5nbGUgCj4+Pj4+Pj4+IGlwdGFibGVfZmlsdGVyIGlwdF9SRUpFQ1QgaXB0X01B
U1FVRVJBREUgaXBfdGFibGVzIAo+Pj4+Pj4+PiBodWF3ZWlfY2RjX25jbSBmdGRpX3NpbyBjZmc4
MDIxMSBjZGNfc3Vic2V0IGNkY19uY20gY2RjX2V0aGVyIAo+Pj4+Pj4+PiB4dF90aW1lIHh0X3Rj
cHVkcCB4dF9zdGF0ZSB4dF9uYXQgeHRfbXVsdGlwb3J0IHh0X21hcmsgeHRfbWFjIAo+Pj4+Pj4+
PiB4dF9saW10Cj4+Pj4+Pj4+IFvCoMKgIDMwLjQyNzMzMV3CoCBubHNfdXRmOCBubHNfaXNvODg1
OV8xIG5sc19jcDQzNyBhdXRoZW5jIAo+Pj4+Pj4+PiBlaGNpX3BsYXRmb3JtIHNkX21vZCBzY3Np
X21vZCBlaGNpX2hjZCBncGlvX2J1dHRvbl9ob3RwbHVnIGV4dDQgCj4+Pj4+Pj4+IG1iY2FjaGUg
amJkMiB1c2Jjb3JlIG5sc19iYXNlIHVzYl9jb21tb24gcHRwIHBwc19jb3JlIG1paSBhZWFkIAo+
Pj4+Pj4+PiBjcnlwdG9fbnVsbCBjcnlwdG9tZ3IgY3JjMzJjX2dlbmVyaWMgY3J5cHRvX2hhc2gK
Pj4+Pj4+Pj4gW8KgwqAgMzAuNDQ4MDE3XSBDUFU6IDAgUElEOiAxNTc4IENvbW06IHdwYV9zdXBw
bGljYW50IE5vdCAKPj4+Pj4+Pj4gdGFpbnRlZCA0LjE0LjEyOSAjMAo+Pj4+Pj4+Cj4+Pj4+Pj4g
UGxlYXNlIGxvb2sgaW4geW91ciBjb2RlIGFuZCBsZXQgbWUga25vdyB0aGUgc291cmNlIGFyb3Vu
ZCB0aGUgCj4+Pj4+Pj4gbGluZSBpbiBtYWMuYyAoNjU2MykgdGhhdCBpcyBzcGxhdHRpbmcuCj4+
Pj4+Pj4KPj4+Pj4+PiBBbHNvLCB5b3UgbWlnaHQgZ3JhYiB0aGUgbGF0ZXN0IGF0aDEway1jdCBy
ZXBvLCBpdCBoYXMgYSB0d2VhayAKPj4+Pj4+PiB0aGF0IG1pZ2h0IGZpeCB0aGUgU1dCQSBvdmVy
cnVuCj4+Pj4+Pj4gbWVzc2FnZXMuCj4+Pj4+Pj4KPj4+Pj4+PiBodHRwczovL2dpdGh1Yi5jb20v
Z3JlZWFyYi9hdGgxMGstY3QKPj4+Pj4+Pgo+Pj4+Pj4+IFRoYW5rcywKPj4+Pj4+PiBCZW4KPj4+
Pj4+Pgo+Pj4+Pj4gSGkgQmVuLAo+Pj4+Pj4KPj4+Pj4+IEhlcmUgaXMgdGhlIG91dHB1dCBiYXNl
ZCBvbiB0aGUgbGF0ZXN0IGdpdCBIRUFEIG9mIHlvdXIgY3QgdHJlZSwgCj4+Pj4+PiBjb21iaW5l
ZCB3aXRoIHRoZSB0ZXN0IGZpcm13YXJlOgo+Pj4+Pj4KPj4+Pj4+IGh0dHBzOi8vcGFzdGViaW4u
Y29tL3Jhdy9rd0M2YzE4Sgo+Pj4+Pgo+Pj4+PiBIZWxsbywKPj4+Pj4KPj4+Pj4gVGhlIHNwbGF0
IGRlY29kZSBkb2VzIG5vdCBtYXRjaCB0aGUgc291cmNlIGNvZGUsIHNvIEknbSBub3Qgd2hpY2gg
Cj4+Pj4+IGlzIGNvcnJlY3QuCj4+Pj4+Cj4+Pj4gT3BlbldydCBzZWVtcyB0byBhZGQgY3VzdG9t
IHBhdGNoZXMgdG8geW91ciBzb3VyY2UuCj4+Pj4KPj4+PiBQbGVhc2UgZmluZCB0aGUgY29tcGxl
dGUgc291cmNlIGluIHN1YnNlcXVlbnQgbWFpbCBhcyBiZWluZyBidWlsZC4KPj4+Cj4+PiBJIGRp
ZCBsb29rIGluIHRoYXQgY29kZSwgYW5kIHRoYXQgaXMgd2hlcmUgSSBzYXcgdGhlIG1pc21hdGNo
LiAKPj4+IFBsZWFzZSBjaGVjayB5b3VyIG93biBsb2NhbCBzeXN0ZW0KPj4+IGFuZCBzZWUgaWYg
dGhlIHNwbGF0IG1hdGNoZXMgeW91ciBjb2RlP8KgIE1heWJlIEkgbWFkZSBzb21lIG1pc3Rha2Ug
Cj4+PiBvZiBjb3Vyc2UuLi4KPj4+Cj4+PiBZb3UgY2FuIHBhc3RlIH4yMCBsaW5lcyBvZiBjb2Rl
IGFyb3VuZCB0aGUgcHJvcGVyIHNwbGF0IGxpbmUgYW5kIAo+Pj4gdGhlbiBJIGNhbiBmaW5kIGl0
IGluIG15Cj4+PiBzb3VyY2UuLi4KPj4+Cj4+PiBUaGFua3MsCj4+PiBCZW4KPj4+Cj4+Pgo+PiBI
aSBCZW4sCj4+Cj4+IEp1c3QgcmV0cmllZCBhZ2FpbiBvbiBhIHNsaWdodGx5IG9sZGVyIGNvbW1p
dCAoMjAxOS0wNS0wOCkgYW5kIHRoZSAKPj4gc3BsYXQgcG9pbnRzIHRvIGFub3RoZXIgbG9jYXRp
b24gbm93Lgo+PiBXaGVuIGxvb2tpbmcgaXQgdXAsIGl0IGFnYWluIHBvaW50cyB0byB0aGUgV0FS
Tl9PTiBwb2ludGVkIGJlbG93IC4uCj4+Cj4+IENoZWNraW5nIHNob3dzIHRoYXQgYWxsIGNhbGxz
IHRvIGF0aDEwa19tYWNfdmlmX2JlYWNvbl9mcmVlKCkgY2FsbHMgCj4+IGFyZSB3YXkgYWJvdmUg
dGhpcyBsaW5lIChoaWdoZXN0IGxpbmUgbnIgaXMgYXJvdW5kIGxpbmUxOTcwKQo+PiBJIGN1cnJl
bnRseSBjYW4ndCBleHBsYWluIHdoZXJlIHRoZSBtaXNtYXRjaCBjb21lcyBmcm9tIC4uCj4+Cj4+
IEN1cnJlbnQgYnVpbGQgYmVsb3cgaXMganVzdCB0aGUgZ2l0IEhFQUQgb2Ygb3BlbndydCAxOS4w
NyBicmFuY2gsIAo+PiBjbG9uZWQsIGJ1aWxkIGFuZCBmbGFzaGVkIHdpdGhvdXQgYW55IG1vZGlm
aWNhdGlvbi4KPj4KPj4KPj4gW8KgwqAgMzEuOTU2Nzc0XSBXQVJOSU5HOiBDUFU6IDAgUElEOiAx
NzI1IGF0IAo+PiAvbW50L3JhbWRpc2sva29lbi9maXJtd2FyZS9idWlsZHMvZ2VuZXJpY19yYjky
Mi9idWlsZF9kaXIvdGFyZ2V0LW1pcHNfMjRrY19tdXNsL2xpbnV4LWFyNzF4eF9taWtyb3Rpay9h
dGgxMGstY3QtMjAxOS0wNS0wOC1mOThiNmRjNC9hdGgxMGstNC4xOS9tYWMuYzo2NTYzIAo+PiBh
dGgxMGtfbWFjX3ZpZl9iZWFjb25fZnJlZSsweGM3Yy8weDExNWMgW2F0aDEwa19jb3JlXQo+Pgo+
Pgo+Pgo+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZXQgPSBhdGgxMGtfY29u
ZmlnX3BzKGFyKTsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaWYgKHJldCkK
Pj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGF0aDEw
a193YXJuKGFyLCAiZmFpbGVkIHRvIHNldHVwIHBzIG9uIHZkZXYgCj4+ICVpOiAlZFxuIiwKPj4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIGFydmlmLT52ZGV2X2lkLCByZXQpOwo+PiDCoMKgwqDCoMKgwqDCoMKg
IH0KPj4KPj4gwqDCoMKgwqDCoMKgwqDCoCBpZiAoY2hhbmdlZCAmIEJTU19DSEFOR0VEX01DQVNU
X1JBVEUgJiYKPj4gLS0tPsKgIMKgwqDCoMKgwqDCoMKgICFXQVJOX09OKGF0aDEwa19tYWNfdmlm
X2NoYW4oYXJ2aWYtPnZpZiwgJmRlZikpKSB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIGJhbmQgPSBkZWYuY2hhbi0+YmFuZDsKPgo+IEkgdGhpbmsgdGhpcyBtaWdodCBub3Qg
YmUgdG8gc2VyaW91cyBvZiBhIGJ1ZywgYW5kIHByb2JhYmx5IGRvZXMgbm90IAo+IGNhdXNlIGFu
eSByZWFsCj4gdHJvdWJsZS4KPgo+IEl0IGlzIGFsc28gcHJvYmFibHkgYSBidWcgaW4gbWFjODAy
MTEgb3Igc2ltaWxhciwgYnV0IG5vdCBjZXJ0YWluIAo+IGFib3V0IHRoYXQuCj4KPiBUaGUgZ2Vu
ZXJhbCBzZXQgb2YgYnVncyByZWxhdGVkIHRvIElCU1Mgc2VlbSB0byBiZSBpbmFiaWxpdHkgdG8g
Cj4gdHJhbnNtaXQgZnJhbWVzCj4gc29tZXRpbWVzICh0aG91Z2ggaXQgdXN1YWxseSB3b3JrcyB3
ZWxsIGluIG15IGxhYiwgc28gSSBoYXZlIG5vdCBiZWVuIAo+IGFibGUgdG8gcmVhbGx5Cj4gZGVi
dWcgaXQpLgoKSSdtIHJlYWxseSB3b25kZXJpbmcgaWYgdGhlIGFkZGl0aW9uYWwgb3BlbndydCBw
YXRjaGVzIG9uIHRvcCBjb21lIGluIApwbGF5IGhlcmUgLi4KSSdtIG5vdCBhYmxlIHRvIGV2ZW4g
c2VuZCBhIHNpbXBsZSBwaW5nIGFjcm9zcyB0aGUgbGluay4KClNtYWxsIFVEUCBwYWNrZXRzIHNl
ZW1zIHRvIHdvcmsuCgoKPgo+IFRoZSBzaW1wbGVyIHRoZSB0ZXN0IGNhc2UsIHRoZSBiZXR0ZXIu
wqAgU28sIGlmIHlvdSBjYW4gcmVwcm9kdWNlIHNvbWUgCj4gcGFja2V0IHRyYW5zbWl0Cj4gaXNz
dWUsIHByZWZlcmFibHk6Cj4KPiAyIHBlZXJzCj4gc2xvdyBzcGVlZCB0cmFmZmljCj4gbm8gZW5j
cnlwdGlvbgo+IG5vIGZ1bm55IHJvdXRpbmcgKE9MU1IsIGJhdG1hbiwgZXRjKQo+Cj4gUGxlYXNl
IGxldCBtZSBrbm93LgoKV2lsbCB0cnkgdGhpcyB0b21vcnJvdy4KClRoYW5rcywKCktvZW4KCj4K
PiBBbmQsIGlmIHlvdSBjYW5ub3QgcmVwcm9kdWNlIGluIHRoaXMgc2ltcGxlIHNldHVwLCB0aGVu
IHdoYXQKPiBpcyB0aGUgdGhpbmcgY2xvc2VzdCB0byB0aGlzIHRoYXQgZG9lcyBzaG93IHRoZSBp
c3N1ZT/CoCBJIGNhbiBidWlsZCAKPiBmaXJtd2FyZSB3aXRoCj4gdmVyYm9zZSB0eC1wYXRoIChh
bmQgcngtcGF0aCwgZm9yIHRoYXQgbWF0dGVyKSBkZWJ1Z2dpbmcgYW5kIGxldCB5b3UgCj4gcnVu
IGl0IGlmIHlvdSBjYW4KPiBmaW5kIGEgZ29vZCB0ZXN0IGNhc2UsIGJ1dCBpdCBjYW5ub3QgZ2F0
aGVyIHVzZWZ1bCBsb2dzIGF0IGhpZ2ggcGFja2V0IAo+IHRyYW5zbWlzc2lvbiByYXRlcy4KPgo+
IFRoYW5rcywKPiBCZW4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5v
cGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3Bl
bndydC1kZXZlbAo=
