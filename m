Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC3C24321
	for <lists+openwrt-devel@lfdr.de>; Mon, 20 May 2019 23:49:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ebf1+h5ci+swERHjVuo4J9POkIuFWJh0nV09a9tshYU=; b=C5bVb+4iS3BavQ
	ECPluD8h7rF/SVRW1gZncCCoL8KGZFLPk3jZh2Hdshl5ocNTgTLyLa3mHYeJP1Cl2Dl3xPA1RvO4m
	PSjmmiIx4CRqtfcf4bvsbZyBaJqO3HNnVAupF/VEMqr8Z9mCYJGPg/6KDnx+HpPnY7+vnQftPhea9
	tSUN/AbTO5BEjWQ8R+4oqofqzoV3xiXY8zUHEJQGD1SP2UMTqVqwWTm7Y96/T2yN+Iyprg0XtkTaf
	IKdADc1uyIfkG5qtYS7eAFi8ELf8Fw7EAh2FIRdoIMcBeZhPxD0ADH2U9pZtEpBn0ZiQSU9mMaRnz
	V5NTdEGs1K31pr0O0P9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSq9U-0004k6-0e; Mon, 20 May 2019 21:49:00 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSq9O-0004jb-Ny
 for openwrt-devel@lists.openwrt.org; Mon, 20 May 2019 21:48:56 +0000
Received: by mail-lj1-x242.google.com with SMTP id w1so13970806ljw.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 20 May 2019 14:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+6DFg7IM6bYn3VQxpLArB81nMYiT8ZBYzYGoOf1ptik=;
 b=SxSMCJ9vPvyF6A0FaxcML0rua7VMtazWx/thPtKEFT2VHEqfb6p2dQjt/eo0gVlXlB
 K3hEnOv11I7uEumHOiPkbf60TXE752k5vd8gTefRifFQUyXesvNtCQOt9pNRm+g0RPCM
 xVydzDhrqKG8p5DkTjLNACF9eCwnBnk3mlwJ8blJ5BFjQH1N98jBnvjhzxRe8ZrhOCep
 D8zPcqJRv/zOH/7uaU2liPjfdwLbZgmk7wG2YB2QazV3Fo56L9KujJSX3ghK98wND+G7
 FDxI4X2mgbpRayb3obdof0LTDBju6L6kw+IJmhYSmlYlhS2LNj/r/+2kq302iISYs81V
 0TIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+6DFg7IM6bYn3VQxpLArB81nMYiT8ZBYzYGoOf1ptik=;
 b=FjmZf84lXcBghIFh8oCFLDRF+z9VLThBwzISZj67sqrCdd+ZKlnzls4auJfEtBvX9z
 RXE+XL85oEz4Fe7591aUTVhyZWDEMtNaoEpLRuK+Oy2wRZgh3CQxf2lW2BltB/N/Pnwp
 CUDFeEaPXWT9F4ZvF70TvzQCZu5Qb3p1LSu1ABfM4ZdcW67P8SZ3IblhONzHNTb1WDgK
 GdUnEChz0YvVD7ZrpHa3VGEDQC82tMHWp/Ps+qwLRb5mXHlVylrMAyhs1Mg3miul0zFE
 WpJG6DM5h8QawqBEf/+3j3UwDwbByAbcyaZuiLW/QvSgGpvEkCTXA9Mj5sO092YgHusy
 ziFw==
X-Gm-Message-State: APjAAAUyB15AmnoniZdfkoK6IggIqZEqaDdLwxHBSp9H5/AWcx9Fncl7
 X17kRBaRv5F5kxWJpOyU8SZ0Bq5UqczvqYdbWWtvS/GL
X-Google-Smtp-Source: APXvYqzyN7JUQljufBnpBI2B+gh6G+qca6KjE+qMxMSUmCbE8p5n7A0brd7YhVvb04SemE6ynNgPaj++fvyWgSNljB4=
X-Received: by 2002:a2e:9456:: with SMTP id o22mr15343772ljh.56.1558388932630; 
 Mon, 20 May 2019 14:48:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190520202521.8587-1-linus.walleij@linaro.org>
 <20190520205644.GA536@meh.true.cz>
In-Reply-To: <20190520205644.GA536@meh.true.cz>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 20 May 2019 23:48:41 +0200
Message-ID: <CACRpkdY91-5HUEMskMOCKpVPwAgnKu3XrMavwfA+5BLcROn2RA@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_144854_850788_AA7E0BE9 
X-CRM114-Status: GOOD (  10.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Christian Lamparter <chunkeey@gmail.com>, Roman Yeryomin <roman@advem.lv>,
 Hauke Mehrtens <hauke@hauke-m.de>, Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Sebastian Luft <sebastian.luft@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gTW9uLCBNYXkgMjAsIDIwMTkgYXQgMTA6NTYgUE0gUGV0ciDFoHRldGlhciA8eW5lenpAdHJ1
ZS5jej4gd3JvdGU6Cgo+IEFuZCBtZXJnZWRbMV0gaXQgaW50byBteSBzdGFnaW5nIHRyZWUsIHNv
IHBsZWFzZSBjaGVjayBpdCBhbmQgbGV0IG1lIGtub3cgaWYKPiBpdCdzIG9rIHdpdGggeW91IG9y
IGlmIHlvdSBwcmVmZXIgdG8gZ28gd2l0aCB2NCwgdGhhbmtzLgoKVGhhbmtzIG1hbiwgc29ycnkg
aWYgSSdtIGEgYml0IGNvbmZ1c2VkIGFyb3VuZCBob3cgeW91IHdhbnQgdGhlCnN5c3VwZ3JhZGUg
dG8gd29yay4KCk1heWJlIHdlIGNvdWxkIG9wZW4gYSBkb2N1bWVudGF0aW9uIHBhZ2UgZm9yIG5l
dyBkZXZpY2VzLCBsaWtlCmhlcmUgaXMgaG93IHdlIHdhbnQgeW91IHRvIGltcGxlbWVudCBzeXN1
cGdyYWRlLCBJIGhhZCBhIGhhcmQgdGltZQp0byBmaWd1cmUgb3V0IHRoYXQgYWxsIHdhcyBjaXJj
dWxpbmcgYXJvdW5kIHRoZSBwbGF0Zm9ybS5zaCBzY3JpcHQgYW5kCmhvdyB0aGF0IHdhcyBjYWxs
ZWQgZnJvbSB0aGUgY29yZSBzeXN1cGdyYWRlLgoKSSBjYW4gc3RhcnQgd2hpbGUgSSBzdGlsbCBo
YXZlIGl0IGluIGZyZXNoIG1lbW9yeSBhbmQgeW91IGNhbiBjaGltZQppbiBvbiBob3cgeW91IHdh
bnQgcGVvcGxlIHRvIGRvIGdlbmVyaWMgY2hlY2tzdW0gZXRjLgoKWW91cnMsCkxpbnVzIFdhbGxl
aWoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCm9wZW53
cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxAbGlzdHMub3BlbndydC5vcmcKaHR0
cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL29wZW53cnQtZGV2ZWwK
