Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A7624F05
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 May 2019 14:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Sj6emQMRCAmm+9LlvmTglL4IpGYVbmXR60VnhL4YgZM=; b=FDWkAPKrj8VzWZUqN+InJpOLm
	KLyui3uNreAuz+cEzE/85z8+i018XBStP1y8BxRRP11VUn5evv51/fXo+NOWsBcQ9WxG5T6JahcOZ
	Qec5suUvZ+Ki7KR9zSMU0rC5LSoSRjAuSurjEU84jiMu1h7oi9ZSJqsOYFleJyE2+dsymTrjxBfzH
	7CyApTIRX28cqvWB1/PyzbTBd50kaNUMmiyu3p2QxQ1zj7vuBih8L1jIWpyTXH2mfc+eD+0yuPdIA
	93OGpkdZXAIUNeGpj9XVbAXwID8hepCQvyEst9fNGj7727tpddiEqQjdvAZ8yTtxDke/OXOdE/6z1
	H93Off0+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT42a-0000p2-Ot; Tue, 21 May 2019 12:38:48 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT42U-0000oe-06
 for openwrt-devel@lists.openwrt.org; Tue, 21 May 2019 12:38:43 +0000
Received: by mail-wm1-x342.google.com with SMTP id n25so900155wmk.4
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 May 2019 05:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=bRrTyP/+o4k4u3ZVBNGlDPEjIWMIoAzJOpnQlQMAzag=;
 b=lgWvg3ARucEcb3dFFUAuYG/+20DCY1nCNhI2IsICym8sluzFMhv9+tbT8/WftNq53O
 rrkfSM9MtVFCT+Q1h2pMQYvMe+7mLr/3RWs73zsrJGfJzbU/YT0r4MrUnWU4MPgkbs6f
 fTQ4LhGxq1wNuLIsFT0dqweASBF87EqPGMOPdX6mhTw/OgfUiSfzUjgU9PEWEYYGbjMd
 UzH/PqfC2FE5816eIlytz807inBRfcR9KgOCpMz0bNoP+eaR4NRR1xwXrtmG+Sj5PcMB
 rRCv41io+6UmC2Oahx9qiBIGFzIe+rnxJD7r2VheuzlFgEn0KhA931TQJ1DqGew3WI9I
 gs5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=bRrTyP/+o4k4u3ZVBNGlDPEjIWMIoAzJOpnQlQMAzag=;
 b=s+MIxGGTPBxTAPB8lQCAWbjYX6WjnB30A1ujcGveLuzVa4KSiYh6swM9XO+2ipOi+J
 coJv/SYL/WbKtR+v/g/tgDtkr/9C4I/ApSRhWJVYKWslqehqIpuD/wEog/gk50Dmc1jF
 rridHGcS9fvoNoch9zLMwGuB0SO9DJaIqWCsv6rfIS4gFYP2PyQP8kUwH1sc4XKqQAxl
 VrPxMzniKihs7eSi+bBBWldnY5ChZ3OUjK3bk0RK/ZsqV+z07Odoa2JGAt53jXMO2qC7
 v7zWAS8Sh6td8EFVJ0nl1xVWKv43q264S/C5RZwaEVwGzBASVDWVO3hsUX1pFrsUPc3F
 wK4g==
X-Gm-Message-State: APjAAAVhahj7nOQay4cKiQoG0FyqM8Pe/m6/0vrNtaAR1fLPIuJcPzUY
 c/63BwmBsjeRpPrdiJirYqw3NV23e9E=
X-Google-Smtp-Source: APXvYqzWAuJlWoVJ7NkoELvFGcIgZofIPSzQtTWtp68a+hLSFhP2On6LGHzlQ4cW3VYfDRQ1wlbOaw==
X-Received: by 2002:a7b:c76b:: with SMTP id x11mr3594578wmk.22.1558442319865; 
 Tue, 21 May 2019 05:38:39 -0700 (PDT)
Received: from [192.168.111.140] ([151.84.207.109])
 by smtp.gmail.com with ESMTPSA id b5sm19311603wrp.92.2019.05.21.05.38.39
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 05:38:39 -0700 (PDT)
To: =?UTF-8?Q?Petr_=c5=a0tetiar?= <ynezz@true.cz>
References: <20190520202521.8587-1-linus.walleij@linaro.org>
 <20190520205644.GA536@meh.true.cz>
 <CACRpkdY91-5HUEMskMOCKpVPwAgnKu3XrMavwfA+5BLcROn2RA@mail.gmail.com>
 <83f8c392-2304-f14d-2b42-571827ae8761@gmail.com>
 <20190521111045.GM63920@meh.true.cz>
From: Alberto Bursi <bobafetthotmail@gmail.com>
Message-ID: <43bdea92-3fe6-4f62-81c2-4ee9db89e9ed@gmail.com>
Date: Tue, 21 May 2019 14:38:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190521111045.GM63920@meh.true.cz>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_053842_068175_742FD961 
X-CRM114-Status: GOOD (  21.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bobafetthotmail[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v3] gemini: Support sysupgrade on DIR-685
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Ck9uIDIxLzA1LzE5IDEzOjEwLCBQZXRyIMWgdGV0aWFyIHdyb3RlOgo+IEFsYmVydG8gQnVyc2kg
PGJvYmFmZXR0aG90bWFpbEBnbWFpbC5jb20+IFsyMDE5LTA1LTIxIDExOjQ0OjM3XToKPgo+PiBP
biAyMC8wNS8xOSAyMzo0OCwgTGludXMgV2FsbGVpaiB3cm90ZToKPj4+IE9uIE1vbiwgTWF5IDIw
LCAyMDE5IGF0IDEwOjU2IFBNIFBldHIgxaB0ZXRpYXIgPHluZXp6QHRydWUuY3o+IHdyb3RlOgo+
Pj4KPj4+IEkgY2FuIHN0YXJ0IHdoaWxlIEkgc3RpbGwgaGF2ZSBpdCBpbiBmcmVzaCBtZW1vcnkg
YW5kIHlvdSBjYW4gY2hpbWUKPj4+IGluIG9uIGhvdyB5b3Ugd2FudCBwZW9wbGUgdG8gZG8gZ2Vu
ZXJpYyBjaGVja3N1bSBldGMuCj4+IFlvdSBkb24ndCBuZWVkIHRvIHdvcnJ5IHRvbyBtdWNoIGFi
b3V0IGZvcm1hdHRpbmcgYW5kIG1ha2luZyBpdCBsb29rIGNvb2wsCj4gSXQncyBub3QgYWJvdXQg
dGhlIGZvcm1hdHRpbmcsIGl0J3MgYWJvdXQgdGhlIGNvbnRlbnQuIEhvdyBjb3VsZCBJIChvciBw
b3NzaWJseQo+IHNvbWVvbmUgZWxzZSkgY2hpbWUgaW4gYW5kIGltcHJvdmUgdGhlIGRvY3MgKGVh
c2lseSk/CgoKQXMgSSBzYWlkIGluIHRoZSBtYWlsLCBoZSBzaG91bGQgd3JpdGUgaXQgaW4gdGhl
IHdpa2kgYXMgYSBzdG9wZ2FwIG1lYXN1cmUsCgppdCdzIGJldHRlciB0byBoYXZlIGl0IGluIHRo
ZSB3aWtpIHdpdGggdGhlIGxpbWl0YXRpb25zIHdlIGFsbCBrbm93LAoKaW5zdGVhZCBvZiB3YWl0
aW5nIGZvciBhIHBlcmZlY3Qgc29sdXRpb24gdGhhdCBtYXkKCm9yIG1heSBub3QgaGFwcGVuIGxh
dGVyLgoKCkFzIGZvciB0aGUgcGVybWFuZW50IHBsYWNlIGZvciBkZXZlbG9wbWVudC90ZWNobmlj
YWwgZG9jdW1lbnRhdGlvbiwKCml0J3MgdXAgdG8geW91IG1lbWJlcnMgYW5kIGNvcmUgY29udHJp
YnV0b3JzIHRvIGRlY2lkZQoKd2hlcmUgYW5kIGhvdyB0byB3cml0ZSBpdCBkb3duLgoKVGhlIG9u
bHkgdGhpbmcgSSBjYXJlIGFib3V0IGlzIHRoYXQgc29tZW9uZSBtdXN0IGJlIGVuZm9yY2luZwoK
dG8gd3JpdGUgdGVjaG5pY2FsL2RldmVsb3BtZW50IGRvY3Mgc29tZXdoZXJlLgoKClRoZSBvbmx5
IHRoaW5nIHRoYXQgd2UgTVVTVCB1c2UgYSB3aWtpIGZvciBpcyBmb3IgdHV0b3JpYWxzCgooaW5z
dGFsbGF0aW9uIGFuZCBjb25maWd1cmF0aW9uKSwgZGV2aWNlIGRhdGEsIGFuZCBvdGhlcgoKdXNl
ci1jb250cmlidXRlZCBkb2N1bWVudGF0aW9uLCBhcyB1c2VycyBkb24ndAoKa25vdyBub3IgbmVl
ZCB0byBsZWFybiBnaXQgb3IgR2l0aHViIGp1c3QgdG8KCndyaXRlIGRvd24gYSB0dXRvcmlhbCBh
bmQgdXBsb2FkIGEgZmV3CgpzY3JlZW5zaG90cyBvZiBhIGJvYXJkLgoKCj4gQlRXIGFyZSB3ZSBn
b2luZyB0byBhZGQgbGlua3MgdG8gdGhlIHdpa2kgaW50byB0aGUgY29kZT8KCldvdWxkIHlvdSBh
ZGQgcGF0aHMgdG8gdGhlIGludGVybmFsIGRvY3MgaW4gdGhlIGNvZGU/CgoKSSBwZXJzb25hbGx5
IGRvbid0IHNlZSB3aHkgeW91IHdhbnQgaXQuIEZpbmRpbmcgdGhlIGRvY3VtZW50IGFib3V0Cgph
IHNwZWNpZmljIE9wZW5XcnQgY29tcG9uZW50IGlzbid0IHRlcnJpYmx5IGhhcmQgZXZlbiB3aXRo
b3V0IGEgZGlyZWN0IGxpbmsuCgoKQnV0IHN0aWxsLCBJJ20gbmV1dHJhbCBvbiB0aGlzIHRvby4g
WW91IGNob29zZSB3aGF0IHlvdSB0aGluayBpcyBiZXN0LgoKSSdtIG5vdCBhIGRldiwgSSBkb24n
dCBrbm93IHdoYXQgaXMgbW9zdCBzdWl0ZWQgZm9yIHlvdXIgd29ya2Zsb3cuCgoKPj4gSSdtIGFm
cmFpZCB0aGF0IHdhaXRpbmcgZm9yIHBlb3BsZSB0byBkZWNpZGUgd2hlcmUgdGhleSB3YW50IHRv
IGJpa2VzaGVkIHRoZQo+PiBkZXZlbG9wZXIgZG9jcyB3aWxsIGVuZCBub3doZXJlLCBqdXN0IGxp
a2UgaXQgZGlkIGluIHRoZSBwYXN0Lgo+IFdlbGwsIHRoZSBkaWZmZXJlbmNlIGlzLCB0aGF0IEkn
bSB3aWxsaW5nIHRvIGhlbHAgbWFrZSBpdCBoYXBwZW4gdGhpcyB0aW1lLCBpZgo+IHRoZXJlJ3Mg
c3RpbGwgc29tZSBpbnRlcmVzdCBhcm91bmQgdGhpcyB0b3BpYy4gSXQgc2ltcGx5IG1ha2VzIHNl
bnNlIHRvIG1lLgo+Cj4gQWN0dWFsbHkgSSdtIG5vdCBzYXlpbmcsIHRoYXQgSSdtIGdvaW5nIHRv
IHByZXBhcmUgcGF0Y2hlcyB3aGljaCB3b3VsZCBhZGQKPiB0aGlzIGZlYXR1cmUgdG8gdGhlIHRy
ZWUsIGJ1dCBJJ20gd2lsbGluZyBoZWxwIHdpdGggdGVzdGluZyBhbmQgZ2l2aW5nIGl0IG15Cj4g
KzEgaW4gYSBwb3RlbnRpYWwgdm90ZS4KCgpUaGlzIGlzIHdoeSBJJ20gYWZyYWlkIHRoaXMgaXNu
J3QgZ29pbmcgdG8gZW5kIGFueXdoZXJlLgoKQWN0dWFsbHkgd3JpdGluZyBkb2N1bWVudGF0aW9u
IHJlcXVpcmVzIHRpbWUgYW5kIGVmZm9ydCwKCmFuZCBJIGZ1bGx5IHVuZGVyc3RhbmQgdGhhdCBk
ZXZlbG9wZXJzIGRvbid0IGxpa2UgdG8gYmUgdXNpbmcKCnRoZWlyIHRpbWUgdG8gd3JpdGUgZG9j
cy4gRXNwZWNpYWxseSBzbyBpbiB0aGVpciBmcmVlIHRpbWUuCgoKSnVzdCBBQ0tpbmcgYW5kIHJl
dmlld2luZyBpc24ndCBlbm91Z2ggdG8gbWFrZSB0aGlzIGhhcHBlbi4KCgpNYXliZSBoYXZlIHRo
ZSBsZWcgd29yayBvZiB0aGlzIGRvY3VtZW50YXRpb24gd29yayBkb25lIGJ5IGFuIGludGVybgoK
aW4gYSBHb29nbGUgU3VtbWVyIG9mIENvZGUgb3Igc29tZXRoaW5nLgoKCj4KPiBJJ3ZlIGFidXNl
ZCB0aGlzIHRocmVhZCBpbiBvcmRlciB0byBzcGFyayBleGFjdGx5IHRoaXMgZGlzY3Vzc2lvbiBh
bmQgdG8gc2VlCj4gaWYgdGhlcmUncyBzb21lIGludGVyZXN0IGluIHBvdGVudGlhbHkgbW92aW5n
IGZvcndhcmQgd2l0aCB0aGlzLiBJdCB3aWxsIHNlcnZlCj4gYWxzbyBhcyBhIHNtYWxsIHJlbWlu
ZGVyIHRvIG1lLCB0aGF0IHRoaXMgbWlnaHQgYmUgbmV4dCB0b3BpYyBJIHNob3VsZCBicmluZwo+
IHRvIHRvIHRoZSBkaXNjdXNzaW9uIG9uIG91ciBtZWV0aW5nIGluIEp1bmUuCgoKUGxlYXNlIHRh
bGsgd2l0aCB0aGUgb3RoZXIgbWVtYmVycyBhYm91dCB0aGlzIHBvaW50LCBhcyBpdCdzIGltcG9y
dGFudAoKYW5kIG5vdCBhZGRyZXNzZWQgcHJvcGVybHkgYnkgdGhlIGN1cnJlbnQgd2lraSBzZXR1
cC4KCgpBcyBJIGFsc28gc2FpZCBhYm92ZSwgSSdtIGF2YWlsYWJsZSB0byByZXdvcmsgb3IgYWRk
IGZvcm1hdHRpbmcgb3IgZG8gb3RoZXIKCmVkaXRvcmlhbCB3b3JrIHRvIG1ha2UgaXQgbG9vayBn
b29kIGFuZCBoYXZlIGEgY29oZXJlbnQgc3RydWN0dXJlLAoKd2hlcmV2ZXIgeW91IGRlY2lkZSB0
byBwbGFjZSBpdC4KCllvdSBqdXN0IG5lZWQgc29tZW9uZSB0byB3cml0ZSBjb3JyZWN0IHJhdyBp
bmZvcm1hdGlvbi4KCgotQWxiZXJ0bwoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
