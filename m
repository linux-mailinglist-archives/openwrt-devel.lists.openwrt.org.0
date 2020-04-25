Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E835D1B884E
	for <lists+openwrt-devel@lfdr.de>; Sat, 25 Apr 2020 19:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:
	Message-Id:Date:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yUYegKvqXYml7nUR+q2n0iBb0E2zc9MRXUOW/5O7zw=; b=JUZHMNE4aNhfhJ
	LkfXA//WEEz4BioRncfqdB9lU1CDFX8JeAuc9iVLAIx07hhqVcJyOUdB2tjVBg44ZWf/1CVIzi7NV
	zz03uSZlzpKw6YOLf//KxEKwo6W/3FfPcpLWT7z3QbN8y3bd4fTywJ0gJ9BX38JWnNxBEn00CEe64
	DJo+xCC94YYEarrTwg70RoFHCDDiJBAGAoCnPNkO00P5W5b28l3rb5yJ3IvPnpm/ZKNqBRpS/OtCG
	Qu/C52S+5HgY78OnyfrnlhaVE8Sc8y4LdipVnQn8ALcwsKwa1GafzR1l9PTQ6LRkCodXC7r4f3nLF
	n8rP2wxtYac3pMTBLepQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSP0c-0005dM-5U; Sat, 25 Apr 2020 17:54:34 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSP0Q-0005c4-8S
 for lede-dev@lists.infradead.org; Sat, 25 Apr 2020 17:54:26 +0000
Received: by mail-pf1-x429.google.com with SMTP id v63so6443870pfb.10
 for <lede-dev@lists.infradead.org>; Sat, 25 Apr 2020 10:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=rLs/5sKHfdvxrb2jGJKa+ZbJJMHkwe2EexW1Z2JDoHM=;
 b=m0rKxi0sOXn6OMXAFjs1Hbh3bt7fP69bFK06wcAac94N3BhBMemHeX9/txszzuGiuY
 eY51D7i9hcjXe6691QBfVykEKQMaTq6gNg7hRtgB5JQqVsBxAP2fc5kMF2DXdcL5xPvh
 7jbkJI9c5rKqz0nSqbTb9VrrDdZ/DKpzcjeeECrZUrePScmQdqZ9wXncFSM1kbf7/57F
 zhONQ25gBUZuFG9ImEbHRLJ6WbXQEDhPS2N0i+7iKLPi62Zq5luSwOwuUbJzqPXeccPc
 iBo+Eq9je9ExiK6DJ+pcjJsy8hZrLkV0tiJ9jwX5d4UGDFNGXUzX2MdN1DDBWS6hBE+6
 JuXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=rLs/5sKHfdvxrb2jGJKa+ZbJJMHkwe2EexW1Z2JDoHM=;
 b=QgonCuX9iS5jVl0ags8wLEnTzQGJGF40Lq2DwZ8JzhXdXXrOoxJ8UQzUjhDFlfCfQX
 H1O/DE1W8W4Gom+cN0wEfrpQI6ODH+oqTwIzHVBItO4dgzYXgGFz+0OSR4l6ljensRBv
 dFzPi4Zz6FfZh27FllGrFhm1iIceO8bj29iof4sXL1JThAUH+h4xUzrwhJI8l9MbEQNU
 tZDgsTn7wVLoTK0Nlw5ER/7iPMaYT1TiRzrGr48b+OwSB69mOP3hLFcnaWxIsvug2erD
 GhFOjND+ZGmaSEseVnbU19eZapPKvcZVTFl8bSL6V9cYETosbz54Vk2NXiLCXz/6BfW8
 Mlng==
X-Gm-Message-State: AGi0PuZHSold3QOvpYieLFhKGA2acgijrZ4xEB6FJ0C/4Jo/U1821NY7
 vZRWrYxnonRWmFYa9b+HEOvaE7Xu0/E=
X-Google-Smtp-Source: APiQypL+8BZAZSgt6OYbWifQ3K0Bpspd380NVZaDGpR3KiPfeI8E1xCLLrphV3Vl/KdmSswGNgMD2w==
X-Received: by 2002:a63:4f1d:: with SMTP id d29mr685902pgb.112.1587837260452; 
 Sat, 25 Apr 2020 10:54:20 -0700 (PDT)
Received: from [192.168.0.147] (76-14-109-232.rk.wavecable.com.
 [76.14.109.232])
 by smtp.gmail.com with ESMTPSA id i13sm7613417pja.40.2020.04.25.10.54.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 25 Apr 2020 10:54:19 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Sat, 25 Apr 2020 10:54:18 -0700
Message-Id: <3DC38C07-2699-4E82-B3D1-338A308C422A@gmail.com>
References: <3a7d11bb-dd4e-11d9-c867-7f97e86af293@lucabert.de>
In-Reply-To: <3a7d11bb-dd4e-11d9-c867-7f97e86af293@lucabert.de>
To: Luca Bertoncello <lucabert@lucabert.de>
X-Mailer: iPhone Mail (17C54)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_105422_302815_F0A87663 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: 1.4 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:429 listed in]
 [list.dnswl.org]
 0.0 DKIM_ADSP_CUSTOM_MED   No valid author signature, adsp_override is
 CUSTOM_MED
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
 1.2 NML_ADSP_CUSTOM_MED    ADSP custom_med hit, and not from a mailing
 list
Subject: Re: [OpenWrt-Devel] Upgrading LEDE to 19.07
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Cgo+IE9uIEFwciAyNSwgMjAyMCwgYXQgMTA6NDcgQU0sIEx1Y2EgQmVydG9uY2VsbG8gPGx1Y2Fi
ZXJ0QGx1Y2FiZXJ0LmRlPiB3cm90ZToKPiAKPiDvu79IaSBsaXN0IQo+IAo+IEknbSBub3Qgc3Vy
ZSwgSSdtIGFza2luZyB0byByaWdodCBsaXN0LCBidXQgSSBkaWRuJ3QgZm91bmQgYW55IG90aGVy
Cj4gbGlzdCBhYm91dCBPcGVuV1JUIEkgY2FuIGFzay4uLgo+IAo+IFNvLCBJIGhhdmUgYSAiVFAt
TGluayBUTC1XUjEwNDNORCB2MSIgcnVubmluZyBPcGVuV1JUIDE3LjAxLjQuCj4gSSdkIGxpa2Ug
dG8gdXBkYXRlIGl0IHRvIDE5LjA3LCBidXQgSSByZWFkIG9uCj4gaHR0cHM6Ly9vcGVud3J0Lm9y
Zy90b2gvaHdkYXRhL3RwLWxpbmsvdHAtbGlua190bC13cjEwNDNuZF92MSB0aGF0IG15Cj4gV0xB
Ti1Td2l0Y2ggaXMgImRpc2NvbnRpbnVlZCIuLi4KTmV2ZXIgaGVhcmQgb2YgdGhpcy4gTWluZSB3
b3JrcyBmaW5lLgo+IAo+IElmIEkgdW5kZXN0YW5kIGNvcnJlY3QsIEkgY2FuIHVwZ3JhZGUgdG8g
MTkuMDcsIGJ1dCBpdCB3aWxsIGJlIHRoZSBsYXN0Cj4gdmVyc2lvbiBJIGNhbiBnZXQsIGlzIGl0
IHJpZ2h0Pwo+IElmIHNvLCBpdCB3b3VsZCBiZSBub3QgYSBiaWcgcHJvYmxlbSByaWdodCBub3cs
IHNpbmNlIEkgY2FuIHVwZGF0ZSBpdAo+IGFuZCBpbiBmdXR1cmUgc2VhcmNoIGZvciBhIG5ldyBT
d2l0Y2ggdG8gaW5zdGFsbCBhIGZ1dHVyZSB2ZXJzaW9uIG9mCj4gT3BlbldSVC4uLgo+IEJ1dCB0
aGUgdmVyeSBxdWVzdGlvbiBpcywgaWYgMTkuMDcgcnVucyBjb3JyZWN0bHkgb24gbXkgZGV2aWNl
Li4uCj4gSSdsbCBleHBhbmQgdGhlIEZpbGVTeXN0ZW0gdXNpbmcgYW4gVVNCLVN3aXRjaCwgYXMg
SSBhbHJlYWR5IGRvbmUgaW4gdGhlCj4gcGFzdCB3aXRoIGFuIG9sZCB2ZXJzaW9uIG9mIE9wZW5X
UlQgKGFmdGVyIHRoZSB1cGRhdGUgdG8gTEVERSB0aGUgc3lzdGVtCj4gZGlkbid0IHVzZSB0aGUg
VVNCLVN0aWNrIGFueW1vcmUuLi4pLiBXaWxsIGl0IGJlIHBvc3NpYmxlIHdpdGggMTkuMDcsIHRv
bz8KVGhlIFJBTSBpcyB0aGUgYmlnZ2VyIHByb2JsZW0uIFRoZXJl4oCZcyBubyBnb29kIHdheSBh
cm91bmQgaXQuIHN3YXAgaXMgbm90IHJlYWxseSBhbiBhbnN3ZXIuCj4gCj4gVGhhbmsgeW91IGZv
ciB5b3VyIGhlbHAKPiBMdWNhIEJlcnRvbmNlbGxvCj4gKGx1Y2FiZXJ0QGx1Y2FiZXJ0LmRlKQo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gb3Bl
bndydC1kZXZlbCBtYWlsaW5nIGxpc3QKPiBvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3Jn
Cj4gaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2
ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
