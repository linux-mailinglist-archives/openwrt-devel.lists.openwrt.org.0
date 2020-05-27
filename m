Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDA61E4510
	for <lists+openwrt-devel@lfdr.de>; Wed, 27 May 2020 16:01:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	References:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LNfjrhO3mFmtrBv/SP4hoeBqxT7d9CZFTdjZ8Zi1XQQ=; b=cHyvMdxi2hHHv6R3a21k0vqe4
	kQJ30XzHDcPjreb4YEx5yooYuVmvEwNY7QhUDG0X19gAYfbw9mp9qvmwkqqHFlCWmqfW6hvDt1Eay
	bhDqieGoeTTfJlUlReUnBiki41r0/vn63UtnAB1lfmzpRPrMDyyGr3TeRImPP8AtaQ+XK+Tvssg9r
	Ny0Q3X5Xz+VdegWDQ1mg/JcRSxHeXxzbKR0pQH9cl6kn5Y3905xJZQmH6A30rtSJ4SahoIOyv7xIl
	aDSZYpa2pkqff0tHk3Tq7yrh7R3Fa1mWVBkcb3nSTSAbkdBoit3cJt4TBsTTjqOZJ8aU4tavyUHxN
	xhaVHkVdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdwcY-0005Bq-S3; Wed, 27 May 2020 14:01:26 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdwcR-0005BN-8A
 for openwrt-devel@lists.openwrt.org; Wed, 27 May 2020 14:01:20 +0000
Received: by mail-ej1-x641.google.com with SMTP id l27so6134210ejc.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 27 May 2020 07:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ncentric-com.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:references:cc:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=9XYjrOQXjKW5WHwvbithWhTdg1Q5xZGK/Sf2clbq9NA=;
 b=QWxTYYxaGf5h5rrXLksJ9RsGhKCR3HuuD/S45SaMPXLVlHmBxpmCPpvc5uPyvE6g4m
 u92fonYZ0fmOzjZGw/kC8uUCfdedhxBEImIKCF9Ei/USzyIWahggt+3SFSszhQtIR4dH
 TwuN2XEGNOH8qZmnvUL3ftMekeErdaw9YYbENL/LQs9tzwkEOQG7RsZTu20LE3DUHUjl
 lZhcts5G5B/9tzbBJT+l1KTBCez78L3g/akgRJe8/pgB0C+nY/LJqxVGu2PZMXJtUZgN
 3kUZqiRZRU92YcGqH/8R4bjpntgL8zlMjAHIfZPvzmSPvyfQeZ5Nct32avM5UILkY1Io
 /o4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:cc:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=9XYjrOQXjKW5WHwvbithWhTdg1Q5xZGK/Sf2clbq9NA=;
 b=g/1RR6Nupp66pxP+VcM4bFKL+5YAJaJ+kXwG4pehLSCwrcfW9Ey3MwoGQjGNdy1L9b
 /M26VbUxP4LKICfMFhCIXuUe1li7BvWuOjGeXEPPZausSmhVGg4diLJAoqRh1OtxBe+6
 CUSKwonDzdNjzts02XVopBHJTPYJ4uFWNWnSObJ/+f2FL4pzRPyklrp880BGTOAM4oy9
 9dyRfCYCYPPYJTjgvUBH3ObvnGbNDk1qSfCX9c/qbOR9PPCYOiO6vYIG3/vnVePj6jhY
 gP1a/XH/NluSLWW1mcQc7jqFgKGD/TNfM6iJyGnayWLyqI01/Zqx+10VdV56y1sB9D5f
 F93g==
X-Gm-Message-State: AOAM532avc979spXXkScDZGdaFF8mBAZaMKIzW2WdJmDdQineHUUzKuW
 afeOyMKZbVkXs3XGVwXh6j69CxrJX5E=
X-Google-Smtp-Source: ABdhPJz8c71SM1Uhx7d+UfcVhp20TlzqnebwXqfY9YP/sg2eYL3jKt1IbZLrw0skGNdVKFaUxaXi+A==
X-Received: by 2002:a17:906:39d9:: with SMTP id
 i25mr6041681eje.510.1590588077547; 
 Wed, 27 May 2020 07:01:17 -0700 (PDT)
Received: from [10.202.0.7] ([31.31.140.89])
 by smtp.gmail.com with ESMTPSA id ch8sm2806271ejb.53.2020.05.27.07.01.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 07:01:17 -0700 (PDT)
From: Koen Vandeputte <koen.vandeputte@ncentric.com>
To: Luochongjun <luochongjun@gl-inet.com>, openwrt-devel@lists.openwrt.org
References: <1588852019-6929-1-git-send-email-luochongjun@gl-inet.com>
 <332ee2d2-3a6d-3607-a472-7a7667bb3e5c@ncentric.com>
Message-ID: <0c828486-4933-e7a7-bb58-469a73245ffe@ncentric.com>
Date: Wed, 27 May 2020 16:01:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <332ee2d2-3a6d-3607-a472-7a7667bb3e5c@ncentric.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_070119_291836_993F43A1 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for gl-e750
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
Cc: Gianni Stubbe <gianni.stubbe@citymesh.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDI3LjA1LjIwIDE1OjMzLCBLb2VuIFZhbmRlcHV0dGUgd3JvdGU6Cj4KPiBPbiAwNy4wNS4y
MCAxMzo0NiwgTHVvY2hvbmdqdW4gd3JvdGU6Cj4+IFRoZSBnbC1lNzUwIGlzIGEgcG9ydGFibGUg
dHJhdmVsIHJvdXRlciB0aGF0IGdpdmVzIHlvdSBzYWZlIGFjY2VzcyB0bwo+PiB0aGUgaW50ZXJu
ZXQgd2hpbGUgdHJhdmVsaW5nLgo+Pgo+PiBTcGVjaWZpY2F0aW9uczoKPj4gLSBTb0M6IFF1YWxj
b21tIEF0aGVyb3MgQVI5NTMxICg2NTBNSHopCj4+IC0gUkFNOiAxMjggTUIgRERSMgo+PiAtIEZs
YXNoOiAxNiBNQiBTUEkgTk9SIChXMjVRMTI4RlZTRykgKyAxMjggTUIgU1BJIE5BTkQgKEdENUYx
R1E0VUZZSUcpCj4+IC0gRXRoZXJuZXQ6IDEwLzEwMDogMXhMQU4KPj4gLSBXaXJlbGVzczogUUNB
OTUzMSAyLjRHSHogKGJnbikgKyBRQ0E5ODg3IDVHSHogKGFjKQo+PiAtIFVTQjogMXggVVNCIDIu
MCBwb3J0Cj4+IC0gU3dpdGNoOiAxeCBzd2l0Y2gKPj4gLSBCdXR0b246IDF4IHJlc2V0IGJ1dHRv
bgo+PiAtIE9MRUQgU2NyZWVuOiAxMjgqNjQgcHgKPj4KPj4gRmxhc2ggaW5zdHJ1Y3Rpb246Cj4+
IFN1cHBvcnQgZm9yIHN5c3VwZ3JhZGUgZGlyZWN0aXZlIHVwZ3JhZGVzLCBhcyB3ZWxsIGFzIGx1
Y2kgdXBncmFkZXMuCj4KPiBIaSwKPgo+IEkgcmV0ZXN0ZWQgdGhpcyBwYXRjaCBqdXN0IHRvIGJl
IHN1cmUgSSBkaWRuJ3QgbWlzcyBhbnl0aGluZyBiZWZvcmUuCj4KPgo+IERpZCB5b3UgdGVzdCB0
aGlzIHBhdGNoIG9uIGFjdHVhbCBoYXJkd2FyZSBiZWZvcmUgc2VuZGluZyB0aGlzPwo+Cj4gSSd2
ZSBnb3QgMnggZTc1MC1NdWRpIGRldmljZXMgd2hpY2g6Cj4KPiAtIEkgZmlyc3QgZmxhc2hlZCB0
byB0aGUgbGF0ZXN0IEdsLmluZXQgZmlybXdhcmUgKDE4LjA2IGJhc2VkKSAod29ya3MgCj4gZmlu
ZSkKPgo+IC0gVHJpZWQgc3lzdXBncmFkZSAtLT4gcmVzdWx0cyBpbiBwbGF0Zm9ybV9jaGVjayBm
YWlsdXJlCj4KPiAtIFRyaWVkIGZvcmNlZCBzeXN1cGdyYWRlIC0tPiBkb2VzIG5vdCBib290IGFm
dGVyd2FyZHMKPgo+IC0gVHJpZWQgdWJvb3QgcmVjb3ZlcnkgKGJvdGggc3lzdXBncmFkZSBhbmQg
ZmFjdG9yeSBpbWFnZXMpIC0tPiBkb2VzIAo+IG5vdCBib290Cj4KPgo+IFVzaW5nIGdsLmluZXQg
b2ZmaWNpYWwgaW1nLCB0aGUgdWJvb3QgcmVjb3ZlcnkgbW9kZSB3b3JrcyBmaW5lLgo+Cj4gVGhh
bmtzLAo+Cj4gS29lbgo+Cj4KSSBqdXN0IHNvbGRlcmVkIFVBUlQgdG8gdGhlIGJvYXJkLgoKRXRo
ZXJuZXQgaXMgbm90IGNvbWluZyB1cCBwcm9wZXJseS4KCnJlbGV2YW50IHByaW50czoKCgpbwqDC
oMKgIDAuNTUxMDkwXSBsaWJwaHk6IEZpeGVkIE1ESU8gQnVzOiBwcm9iZWQKW8KgwqDCoCAwLjg3
Mjk3NV0gYWc3MXh4IDE5MDAwMDAwLmV0aDogQ291bGQgbm90IGNvbm5lY3QgdG8gUEhZIGRldmlj
ZS4gCkRlZmVycmluZyBwcm9iZS4KW8KgwqDCoCAwLjg4MTA5OF0gYWc3MXh4IDFhMDAwMDAwLmV0
aDogaW52YWxpZCBNQUMgYWRkcmVzcywgdXNpbmcgcmFuZG9tIAphZGRyZXNzClvCoMKgwqAgMS4x
Mzk4NzNdIHJhbmRvbTogZmFzdCBpbml0IGRvbmUKW8KgwqDCoCAxLjUyMDI5NV0gbGlicGh5OiBh
ZzcxeHhfbWRpbzogcHJvYmVkClvCoMKgwqAgMS41MjU4MTFdIGxpYnBoeTogYXI4eHh4LW1kaW86
IHByb2JlZApbwqDCoMKgIDEuNTM4OTA1XSBzd2l0Y2gwOiBBdGhlcm9zIEFSODIyOSByZXYuIDEg
c3dpdGNoIHJlZ2lzdGVyZWQgb24gbWRpby4wClvCoMKgwqAgMS41ODc0NTFdIGFnNzF4eCAxYTAw
MDAwMC5ldGg6IGNvbm5lY3RlZCB0byBQSFkgYXQgZml4ZWQtMDowMCAKW3VpZD0wMDAwMDAwMCwg
ZHJpdmVyPUdlbmVyaWMgUEhZXQpbwqDCoMKgIDEuNTk3NDk5XSBldGgwOiBBdGhlcm9zIEFHNzF4
eCBhdCAweGJhMDAwMDAwLCBpcnEgNSwgbW9kZTogZ21paQpbwqDCoMKgIDEuNjA1NjEwXSBORVQ6
IFJlZ2lzdGVyZWQgcHJvdG9jb2wgZmFtaWx5IDEwClvCoMKgwqAgMS42MTQ5MjldIFNlZ21lbnQg
Um91dGluZyB3aXRoIElQdjYKW8KgwqDCoCAxLjYxODkwMF0gTkVUOiBSZWdpc3RlcmVkIHByb3Rv
Y29sIGZhbWlseSAxNwpbwqDCoMKgIDEuNjIzNjAxXSA4MDIxcTogODAyLjFRIFZMQU4gU3VwcG9y
dCB2MS44ClvCoMKgwqAgMS42MzEyNDddIFBDSSBob3N0IGJyaWRnZSAvYWhiL3BjaWUtY29udHJv
bGxlckAxODBjMDAwMCByYW5nZXM6ClvCoMKgwqAgMS42Mzc2NDJdwqAgTUVNIDB4MDAwMDAwMDAx
MDAwMDAwMC4uMHgwMDAwMDAwMDEzZmZmZmZmClvCoMKgwqAgMS42NDMwNTddwqDCoCBJTyAweDAw
MDAwMDAwMDAwMDAwMDAuLjB4MDAwMDAwMDAwMDAwMDAwMApbwqDCoMKgIDEuNjQ4NjU1XSBQQ0kg
aG9zdCBicmlkZ2UgdG8gYnVzIDAwMDA6MDAKW8KgwqDCoCAxLjY1MjkzN10gcGNpX2J1cyAwMDAw
OjAwOiByb290IGJ1cyByZXNvdXJjZSBbbWVtIAoweDEwMDAwMDAwLTB4MTNmZmZmZmZdClvCoMKg
wqAgMS42NjAwNTFdIHBjaV9idXMgMDAwMDowMDogcm9vdCBidXMgcmVzb3VyY2UgW2lvwqAgMHgw
MDAwXQpbwqDCoMKgIDEuNjY1ODI0XSBwY2lfYnVzIDAwMDA6MDA6IHJvb3QgYnVzIHJlc291cmNl
IFs/Pz8gMHgwMDAwMDAwMCBmbGFncyAweDBdClvCoMKgwqAgMS42NzI4NDVdIHBjaV9idXMgMDAw
MDowMDogTm8gYnVzbiByZXNvdXJjZSBmb3VuZCBmb3Igcm9vdCBidXMsIAp3aWxsIHVzZSBbYnVz
IDAwLWZmXQpbwqDCoMKgIDEuNjgyMzc0XSBwY2kgMDAwMDowMDowMC4wOiBCQVIgMDogYXNzaWdu
ZWQgW21lbSAKMHgxMDAwMDAwMC0weDEwMWZmZmZmIDY0Yml0XQpbwqDCoMKgIDEuNjkwMDEwXSBw
Y2kgMDAwMDowMDowMC4wOiBCQVIgNjogYXNzaWduZWQgW21lbSAKMHgxMDIwMDAwMC0weDEwMjBm
ZmZmIHByZWZdClvCoMKgwqAgMi4wMTM5NjFdIGFnNzF4eCAxOTAwMDAwMC5ldGg6IGNvbm5lY3Rl
ZCB0byBQSFkgYXQgbWRpby4wOjFmOjA0IApbdWlkPTAwNGRkMDQyLCBkcml2ZXI9R2VuZXJpYyBQ
SFldClvCoMKgwqAgMi4wMjQ0NzNdIGV0aDE6IEF0aGVyb3MgQUc3MXh4IGF0IDB4YjkwMDAwMDAs
IGlycSA0LCBtb2RlOiBtaWkKClvCoMKgIDEwLjI5MzczMV0gSVB2NjogQUREUkNPTkYoTkVUREVW
X1VQKTogZXRoMDogbGluayBpcyBub3QgcmVhZHkKW8KgwqAgMTEuMzI1MDg4XSBldGgwOiBsaW5r
IHVwICgxMDAwTWJwcy9GdWxsIGR1cGxleCkKClvCoMKgIDExLjMyOTkzNF0gSVB2NjogQUREUkNP
TkYoTkVUREVWX0NIQU5HRSk6IGV0aDA6IGxpbmsgYmVjb21lcyByZWFkeQoKW8KgwqAgMTcuNzE2
MDkzXSBldGgwOiBsaW5rIGRvd24KCgp0aGlzIGRldmljZSBhbHNvIG9ubHkgaGFzIDEgZXRoZXJu
ZXQgcG9ydCBleHBvc2VkIG9uIHRoZSBib2FyZC4KClJlZ2FyZHMsCgpLb2VuCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWls
aW5nIGxpc3QKb3BlbndydC1kZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9w
ZW53cnQub3JnL21haWxtYW4vbGlzdGluZm8vb3BlbndydC1kZXZlbAo=
