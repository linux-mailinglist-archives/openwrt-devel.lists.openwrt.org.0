Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 295B196D06
	for <lists+openwrt-devel@lfdr.de>; Wed, 21 Aug 2019 01:19:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HOjqtV4SDr2Uu50x4hDVyznKvZntg2mkuk/hT3MQJIU=; b=rXe/xfuOZlK5tFmhea1+3PQsD
	lqcuqkJvR3dVa3hV0v2d3yulnp8W2VEqrUChFh0rp1BCT9e4uojVVJump9rM3SXZY0fIVcerLxVTl
	OUvycLAyUq9e6W2qGhnsuO7CiFhIjtQEOxKK7/KrKjlrJnjk4ih04f2wW7/HdHv2vm+RxvyD+L6E/
	0g7euTY6Ww4WJ5ymXzlFJwXGkSHY945dOpJyHhc3YjfjdtGF/DysmQ59vmcTK97p7KEqC6PoZpTyM
	c7VPRYdE9eKTndx8OoGP9Mfd8RlHARtd9CqX9CTHWm1/JKypCsT+iH9H6QSYPScnatdPiz0ikSIL0
	661xEGFGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0DPK-0000ZK-1y; Tue, 20 Aug 2019 23:19:18 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0DPC-0000Yw-FH
 for openwrt-devel@lists.openwrt.org; Tue, 20 Aug 2019 23:19:12 +0000
Received: by mail-wm1-x343.google.com with SMTP id e8so3473206wme.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 20 Aug 2019 16:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=R1+wy7yQEWMq8hk5XrPCK3jNrtlqr5/v0JP/aTYbUPA=;
 b=HIUIT5S1ACw0oEhNgdX06AOLBbgJRc1JOcRK10RGqoVRNW+vI7L4RSIOhPSDjGikZD
 wAHU3OhvPurT82J9+TONUEmA/5c7AGiXP0zHSeL0vifoR3N7trsn3JxKAtCkQI7Qtbof
 cursZJcAzcK3L8VGWxEULmgygmHXOs67coM0UfMxr/J4DWw0S8M5OzFZ9MkGkuxc5sHO
 glhOt77jXO5F/G9FRyOmgNQgVKFt6Fsvta1aT/4Kl7K3ITl7NN1BcRmIp7pIjBb5Uk63
 SD5pMR7mhN+vGexV1QN3Ivx2hWmoB4XqdWbvsrUoDfRmNgJXoKjYz6G0EZmuP7bqR5J9
 SWGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=R1+wy7yQEWMq8hk5XrPCK3jNrtlqr5/v0JP/aTYbUPA=;
 b=tx1AH8mxlmiSD43UDtxFjRrqM6XH3fddR37aGKrX40m9v1kjg0wclP1PnT3ooP/VuP
 R9MPgVxRxAXw0PeqeZLtBIzPZ0r+kbi9O8peVKHtoKJTgdtKOzoYiSXElqZuQKYY53Nt
 HPNP9mC+YLIToQ+67FuGYTUYW9TJnKunladuyCHKUtNVKbCIQk3saPFyAmTrZsHhzIKA
 Kb6g/trReczMDCkfGDDldzuiWWZLO5RLrkKK6WownyDR16ArnTkFNAHN/0k95MGBYSx2
 f32e9eU9/NKxgW4J5pKhZ+8E4KGpx5ftSK5Aau8PHStTE2m/0JrG8oyBvlha6OrPRtwR
 /hDw==
X-Gm-Message-State: APjAAAWUffytHPAbB6xGiiy1PcNhAJ1r6x4jGn7szs5gWF9+5pwnYpqY
 Y8eP328NSc7II7eb3Sd1z0/1L0yE
X-Google-Smtp-Source: APXvYqwCHP0+eEymBs4RhlmndsUp2sOcHwgd9tWL564wH8xYBXzvgG2sv4intbfe/G6LKHsYgj/Sbw==
X-Received: by 2002:a1c:ca0c:: with SMTP id a12mr2188488wmg.71.1566343147280; 
 Tue, 20 Aug 2019 16:19:07 -0700 (PDT)
Received: from [192.168.1.230] ([134.90.239.71])
 by smtp.gmail.com with ESMTPSA id s64sm3451315wmf.16.2019.08.20.16.19.06
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 20 Aug 2019 16:19:06 -0700 (PDT)
To: openwrt-devel@lists.openwrt.org
References: <859F4E11-840B-4BDE-AA3E-0BA3FD461620@gmail.com>
 <5db7f548-9eca-d798-5a18-229259507025@ironai.com>
 <2D0AD814-FD6E-45BE-9B6E-7389ABB7DB4A@gmail.com>
 <CANoib0FaZNd4eBQY65P0nuUzOmpv7RKkGLmU+SXO4NEmSn0SBw@mail.gmail.com>
 <178FDDAC-A0CD-4FC3-B8F7-642067E9FFD1@gmail.com>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <3b0ee438-b46c-2006-a9b5-c27c6cda7f37@gmail.com>
Date: Wed, 21 Aug 2019 01:19:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <178FDDAC-A0CD-4FC3-B8F7-642067E9FFD1@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_161910_515031_385F6DB6 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] Did they check security of OpenWrt?
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

Ck9uIDIwLzA4LzE5IDIzOjE5LCBSaWNoIEJyb3duIHdyb3RlOgo+IERtaXRyeSwKPgo+PiBPbiBB
dWcgMjAsIDIwMTksIGF0IDExOjU4IEFNLCBEbWl0cnkgVHVuaW4gPGhhbmlwb3VzcGlsb3RAZ21h
aWwuY29tPiB3cm90ZToKPj4KPj4gUmljaCwKPj4KPj4gT3BlbldydCBpcyBhIExpbnV4IGRpc3Ry
by4gSXQgaGFzIGFsbCBzZWN1cml0eSBhcyBhbnkgb3RoZXIgb25lLiBBbGwKPj4gQ1ZFIGFyZSB0
aW1lbHkgYWRkcmVzc2VkLgo+PiBUaGVyZSBpcyBubyBuZWVkIGZvciBzcGVjaWFsIHRlc3RzLgo+
IFllcywgYnV0Li4uIFZpcnR1YWxseSBhbGwgdGhlIG90aGVyIHZlbmRvcidzIGZpcm13YXJlIGFy
ZSAiTGludXggZGlzdHJvJ3MiIGFzIHdlbGwuIEFuZCBpZiBJIHVuZGVyc3RhbmQgdGhlIENJVEwg
c2NhbiBwcm9jZXNzLCBpdCBzaG93cyBsb3RzIG9mIGJhZCBidWlsZCBwcmFjdGljZXMgaW4gdGhl
IHZlbmRvciBmaXJtd2FyZSBzb3VyY2UgY29kZS4KPgo+IENhbiBhbnlvbmUgc3BlYWsgdG8gd2hl
dGhlciBPcGVuV3J0IGJ1aWxkcyB1c2UgYW55L2FsbCBvZiB0aG9zZSB0ZWNobmlxdWVzIGNhbGxl
ZCBvdXQgdG8gcHJvdmlkZSBhZGRpdGlvbmFsIHNlY3VyaXR5PyBPcGVuV3J0J3MgbW9kZXJuIGtl
cm5lbCBwcm92aWRlcyBhIGJ1bmNoIG9mIHNlY3VyaXR5LiBUaGF0IG1heSBiZSBnb29kIGVub3Vn
aCwgZXZlbiBpZiBidWlsZHMgZG9uJ3QgdXNlIGFsbCB0aG9zZSB0ZWNobmlxdWVzLiBBbmQgaWYg
d2UgaGF2ZSBpbXBsZW1lbnRlZCB0aGVtLCB3ZSBjYW4gZnVydGhlciBkaWZmZXJlbnRpYXRlIG91
cnNlbHZlcyBmcm9tIHZlbmRvciBmaXJtd2FyZS4uLlRoYW5rcy4KPgo+IFJpY2gKPgoKVmVuZG9y
IGZpcm13YXJlIGFyZW4ndCB1c3VhbGx5IGRpc3Ryb3MuIFRoZXkgYXJlIG5vdCBjcmVhdGVkIGJ5
IAphc3NlbWJsaW5nIG1vZHVsYXIgcGFja2FnZXMsIHRoZXkgdXN1YWxseSBjb21lIGZyb20gYSBT
REssCgp3aGljaCBpcyBhICJwcmVidWlsdCBMaW51eCBzeXN0ZW0iIGJ1bmRsZWQgd2l0aCB0aGUg
Y3Jvc3MtY29tcGlsaW5nIAp0b29sY2hhaW4sIHRoYXQgd2FzIGFzc2VtYmxlZCBtYW51YWxseSBi
eSB0aGUgU29DIG1hbnVmYWN0dXJlcgoKYW5kIGFsbG93cyB0aGUgT0VNIHRvIGhhdmUgYSB3b3Jr
aW5nIHN5c3RlbSB3aGVyZSB0aGV5IG9ubHkgbmVlZCB0byBhZGQgCnRoZWlyIG93biBjdXN0b21p
emF0aW9ucyAodXN1YWxseSBhIHdlYiBpbnRlcmZhY2UgYW5kIHN1Y2gpLgoKVGhleSBhcmUgYSAi
TGludXggRnJvbSBTY3JhdGNoIiBzeXN0ZW0sIHdoaWxlIGEgZGlzdHJvIGlzIGEgbW9kdWxhciAK
c3lzdGVtIG1hZGUgb2YgcGFja2FnZXMgYXNzZW1ibGVkIGRlcGVuZGluZyBvbiBuZWVkLgoKClRo
YXQgc2FpZCwgT3BlbldydCdzIGNvbXBpbGUtdGltZSBzZWN1cml0eSBmdW5jdGlvbmFsaXR5IGlz
IGRlZmluZWQgaGVyZSAKKHdoZXJlIHlvdSBmaW5kIGFsc28gc29tZSBkZXNjcmlwdGlvbnMpCgpo
dHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L2Jsb2IvbWFzdGVyL2NvbmZpZy9Db25m
aWctYnVpbGQuaW4KCmFuZCBieSBkZWZhdWx0CgoiZ2NjIGZvcm1hdC1zZWN1cml0eSIgaXMgZW5h
YmxlZAoKIlVzZXIgc3BhY2UgU3RhY2stU21hc2hpbmcgUHJvdGVjdGlvbiIgaXMgc2V0IHRvICJS
ZWd1bGFyIgoKIktlcm5lbCBzcGFjZSBTdGFjay1TbWFzaGluZyBQcm90ZWN0aW9uIiBpcyBhbHNv
IHNldCB0byAiUmVndWxhciIKCiJFbmFibGUgYnVmZmVyLW92ZXJmbG93cyBkZXRlY3Rpb24gKEZP
UlRJRllfU09VUkNFKSIgaXMgZW5hYmxlZCBhbmQgc2V0IAp0byAiQ29uc2VydmF0aXZlIgoKIkVu
YWJsZSBSRUxSTyBwcm90ZWN0aW9uIsKgIGlzIHNldCB0byAiRnVsbCIKCiJVc2VyIHNwYWNlIEFT
TFIgUElFIGNvbXBpbGF0aW9uIiBpcyBkaXNhYmxlZCBieSBkZWZhdWx0CgpVc2Vyc3BhY2UgQUxT
UiBpcyBlbmFibGVkIG9uIHRoZSBrZXJuZWwgY29uZmlnIGZvciBtb3N0IChhbGw/KSB0YXJnZXRz
CgpodHRwczovL2dpdGh1Yi5jb20vb3BlbndydC9vcGVud3J0L3NlYXJjaD9xPUNPTkZJR19BUkNI
X0hBU19FTEZfUkFORE9NSVpFJTNEeSZ1bnNjb3BlZF9xPUNPTkZJR19BUkNIX0hBU19FTEZfUkFO
RE9NSVpFJTNEeQoKVGhpcyBpcyB0aGUgZGVzY3JpcHRpb24gb2YgdGhlIGZlYXR1cmUgaW4gTGlu
dXggdXBzdHJlYW0KCmh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9ibG9iLzQwNjRl
NDdjODI4MTA1ODY5NzViNDMwNGIxMDUwNTYzODliZWFhMDYvRG9jdW1lbnRhdGlvbi9mZWF0dXJl
cy92bS9FTEYtQVNMUi9hcmNoLXN1cHBvcnQudHh0CgoKS0FMU1IgKGtlcm5lbCBzaWRlIEFMU1Ip
IGlzIG5vdCBlbmFibGVkIG9uIGFueSB0YXJnZXQuCgpodHRwczovL2dpdGh1Yi5jb20vb3Blbndy
dC9vcGVud3J0L3NlYXJjaD9wPTEmcT1DT05GSUdfUkFORE9NSVpFX0JBU0UlM0R5JnVuc2NvcGVk
X3E9Q09ORklHX1JBTkRPTUlaRV9CQVNFJTNEeQoKSGVyZSBhbiB1cHN0cmVhbSBkZXNjcmlwdGlv
biBvZiB0aGF0CgpodHRwczovL2dpdGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi9tYXN0ZXIv
YXJjaC94ODYvS2NvbmZpZyNMMjEyNgoKSXQncyBpbnRlcmVzdGluZyB0byBub3RlIGhvdyBhcHBh
cmVudGx5IHVwc3RyZWFtIGVuYWJsZXMgaXQgYnkgZGVmYXVsdCAKb24geDg2IGFuZCBBcm0gYXQg
bGVhc3QgKGFuZCBvdGhlcnMgdG9vIEkgZ3Vlc3MpLCB3aGlsZSBpbiBPcGVuV3J0IHRoaXMgCmlz
IHN0aWxsIGRpc2FibGVkLgoKCi1BbGJlcnRvCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Kb3BlbndydC1kZXZlbCBtYWlsaW5nIGxpc3QKb3BlbndydC1k
ZXZlbEBsaXN0cy5vcGVud3J0Lm9yZwpodHRwczovL2xpc3RzLm9wZW53cnQub3JnL21haWxtYW4v
bGlzdGluZm8vb3BlbndydC1kZXZlbAo=
