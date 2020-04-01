Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E61719AB6B
	for <lists+openwrt-devel@lfdr.de>; Wed,  1 Apr 2020 14:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFyxEdm9hxWD9LWctdCreVr801xEdz3w8jDNem53wxg=; b=WqfFG+uvu9ndgI
	83o6fD+XpsmcfY2VN/hHuvxpKezsdPUB3HQRWXjLDXvMAWudxXCyf3jne+makzMmYEL5Rkp2fxAIQ
	NT2dxYUfNEvtl0SNA03+1OA6uTXWV6jprAnxU/1U9ZCbgVAoMT4iLEiXkV2SelCtnmJqvADMfUs2M
	9x7G/r7317FJIXIeBpKwgv5ofpGJZNgOvBzg/QZ2pPYo50D2iXztSYKLvmPgwd6rxQeb6aGRrUl8p
	tfVHxC5LUckZFnrBslyMrZNt/v/S6UQTJMZeZC4laSPcUiKDln12NmEi4CN2hOL0QHtono2g4TW0z
	vthuunjjjcnKCHrpFfaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJcFH-0000tZ-U8; Wed, 01 Apr 2020 12:13:23 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJc5g-0000Oe-R5
 for openwrt-devel@lists.openwrt.org; Wed, 01 Apr 2020 12:03:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id i19so6900450wmb.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 01 Apr 2020 05:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=srSOQOXb02G7hSyJxYiANqF8tYG+H93UQ+hi4XYNSgo=;
 b=gBRf5KaYHh7psxBWz7vyA5fngsV7Tquui2b+tMr9qLcBvCGuSrNujaZpCD3y/grq8x
 yiSD+pX9hEZeE+XES3zR+xTuQ4W7pLeXx/iueLX8x4rXNHg/rGIfyxUj8uOg4h/d1twD
 iXA5CT2VTH1KZOgAObJ4YXlr3zpCJSIDSp1vqUkCraFHmkUT8TrTdyu9XpwF6i9m6+RE
 Q98MtvY812IxnMxmWTUUa2OXJcgj6oxczvzB1aLwZ4GwRw2eLLI/YDKpZI/XuR3cVauU
 j7MDxcA9tyXjsSDJbWpxf2aeK1Y3w9B2tgCwwMxl9qfxlJND6/LemMuW+Q//iyiun+Yj
 t15w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=srSOQOXb02G7hSyJxYiANqF8tYG+H93UQ+hi4XYNSgo=;
 b=W/85V5azSOOdoMRAQGddOIL/QSnLCUoxVdplv0EsbCA3zQxewCLieA+yuoQrxXBXw3
 LqCU2y0IFOK9DjGSz14rGfi/3VeSR29hJXo0xQwWvskTZ8Rck4uMU0csBlP3Tpr0eeWO
 SaYWfHg2HzjGsQKnF4tXatGyz/cHjn/5boiIL2nnHDQdE4Z8qtWLz6nNzqzybPJUttJu
 /Hhn9Gw9g3pAyAouFZEBTsR5rApfB73ogF3nT1HxppPxKz77uTbQGQtbf6uwFXPqnmWJ
 4L0OCCBgexAywL7zqsDyEPJlep8z3bAIRgSfPELiUAsgd3QfoJWWHH8apWI78nPdPTK6
 CaRQ==
X-Gm-Message-State: AGi0PuY+otb2hXCQNXNO+3kFvmAR4Bo/y7QekiAawJwVt0O+Gb/O0TeL
 2lgV/C2xXRgcKWw4SJutDCg=
X-Google-Smtp-Source: APiQypKMqh1XHBAsgzYYrMXjunPQ5bWPYNtEdajSeQI95uzdSQMKOpZpxMHALu/YIehr9yvfTlwpXA==
X-Received: by 2002:a1c:bcc6:: with SMTP id m189mr4097717wmf.48.1585742607040; 
 Wed, 01 Apr 2020 05:03:27 -0700 (PDT)
Received: from [10.8.0.6] ([5.2.67.190])
 by smtp.gmail.com with ESMTPSA id d21sm2644399wrb.51.2020.04.01.05.03.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Apr 2020 05:03:26 -0700 (PDT)
To: Piotr Dymacz <pepe2k@gmail.com>, Paul Spooren <mail@aparcar.org>,
 openwrt-devel@lists.openwrt.org
References: <20200331232009.1948083-1-mail@aparcar.org>
 <427c8bc6-3313-e334-f346-73d6dcfe04c5@gmail.com>
From: Tomasz Maciej Nowak <tmn505@gmail.com>
Message-ID: <909b15c0-b36f-db64-8aaf-f12afe539a61@gmail.com>
Date: Wed, 1 Apr 2020 14:03:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <427c8bc6-3313-e334-f346-73d6dcfe04c5@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_050328_910653_851D7AF2 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tmn505[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [tmn505[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] mvebu/cortexa9: use Linksys codename as
 PROFILE
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
Cc: Daniel Golle <daniel@makrotopia.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

VyBkbml1IDAxLjA0LjIwMjAgb8KgMDg6NTUsIFBpb3RyIER5bWFjeiBwaXN6ZToKPiBIaSBQYXVs
LAo+IAo+IE9uIDAxLjA0LjIwMjAgMDE6MjAsIFBhdWwgU3Bvb3JlbiB3cm90ZToKPj4gVGhlIFBS
T0ZJTEUgbmFtZXMgb2YgbXZlYnUvY29ydGV4YTkvTGlua3N5cyBkZXZpY2VzIGFyZSBiYXNlZCBv
biB0aGUKPj4gY29uc3VtZXIgbmFtZXMgKGxpa2UgbGlua3N5c193cnQxMjAwYWMpIGluc3RlYWQg
b2YgdGhlIHZlbmRvciBjb2RlbmFtZXMKPj4gKGxpa2UgbGlua3N5c19jYWltYW4pIHdoaWNoIGFy
ZSBob3dldmVyIHVzZWQgaW4gdGhlIHJlc3Qgb2YgdGhlIGJ1aWxkCj4+IHN5c3RlbSAocGxhdGhm
b3JtLnNoLCBib290Y291bnQsIDAxX2xlZHMpLgo+Pgo+PiBBIHJ1bm5pbmcgZGV2aWNlIGlzIG5v
dCBhYmxlIHRvIGtub3cgdGhlIHByb2ZpbGUgdXNlZCBmb3IgaXRzIGZpcm13YXJlCj4+IGNyZWF0
aW9uIGFzIGAvdG1wL3N5c2luZm8vYm9hcmRfbmFtZWAgcG9pbnRzIHRvIHRoZSBkZXZpY2UgdHJl
ZQo+PiBpZGVudGlmaWVyIChlcXVhbCB0byBMaW5rc3lzIGNvZGVuYW1lKSBhbmQgYC90bXAvc3lz
aW5mby9tb2RlbGAgaXMgbm90Cj4+IGRldGVybWluaXN0aWNhbGx5ICpjb252ZXJ0aWJsZSogdG8g
dGhlIFBST0ZJTEUgbmFtZS4KPj4KPj4gVGhlIGludHJvZHVjdGlvbiBvZiBBTFQgdGl0bGVzICg0
ZWUzY2YyYjVhKSBhbGxvd3MgdG8gc3RvcmUgY29uc3VtZXIKPj4gbmFtZXMgYW5kIG1ha2UgdGhl
bSBhdmFpbGFibGUgaW4gdGhlIGBtZW51Y29uZmlnYCBzbyB0aGUgcHJvZmlsZSBuYW1lIGlzCj4+
IHRyYW5zcGFyZW50IHRvIHJlZ3VsYXIgdXNlcnMuCj4+Cj4+IFRoaXMgcGF0Y2ggY2hhbmdlcyB0
aGUgbXZlYnUvY29ydGV4YTkvTGlua3N5cyBQUk9GSUxFUyB0byB1c2UgdGhlIGRldmljZQo+PiB0
cmVlIGlkZW50aWZpZXIgYWthIExpbmtzeXMgY29kZW5hbWUgYXMgUFJPRklMRSBuYW1lIGFuZCB1
c2VzIHRoZQo+PiBjb25zdW1lciBuYW1lIGFzIEFMVCB0aXRsZS4KPiAKPiBXaGF0IGFib3V0IGZp
cm13YXJlIGZpbGVuYW1lcz8gV291bGRuJ3QgdGhpcyBjaGFuZ2UgY29uZnVzZSBwZW9wbGUgc2Vh
cmNoaW5nIGZvciBmaXJtd2FyZSBmaWxlcyBieSBkZXZpY2UgbW9kZWwgbmFtZT8KPiAKPiBZb3Vy
IGNoYW5nZSBzd2l0Y2ggdGhpcyBmcm9tICdtYW51ZmFjdHVyZXJfbW9kZWwnIGFwcHJvYWNoIHRv
ICdtYW51ZmFjdHVyZXJfbWFudWZhY3R1cmVyLWNvZGVuYW1lJy4gRG9lcyBMaW5rc3lzIGV2ZXIg
bWVudGlvbiB0aGF0IGNvZGVuYW1lcyBvbiB0aGVpciB3ZWJzaXRlLCBpbiBtYXJrZXRpbmcgbWF0
ZXJpYWxzLCBldGMuPwo+IAoKKzEsIG5vdCBldmVuIG9uIHRoZSBkZXZpY2UgaXRzZWxmIHRoZXJl
J3MgbWVudGlvbiBhYm91dCB0aGVzZSBjb2RlIG5hbWVzLAphbmQgdGhhdCdzIHdoeSBmcm9tIG1l
IHRoYXQncyBhIE5BSy4KCi0tIApUTU4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
