Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C0F12A91D
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Dec 2019 21:52:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KevLVXHHsbA3c1gn/0SXbX/qge4TYuKL/orWsKWRAsQ=; b=qo5QuKljKEPeFW
	mKuxQqrq3npgPWMbRT3LuU7CiCbxQ6ozjt5sFTbagiICl/W8dF6zVjAa2U9JkDV15qM4NzwQVDpHc
	w5O5uALwc78G2bGY/BuCnp/roLNQuDtcH+ncCKZE1F0FGpGZuhjwcndTtAvtPCB/jDpqD3XR0S2+b
	ptNCuGVE0ZmpOCx4A9YXcQnNuH0AsMgcEOWj2MKsIA5jf70cY54CPxwBHzpKW3r/dXfvscEQUPkth
	S5rD9kK6FEBllXgiicDXe9Pq8+RCiDPnH0c/I2cgEf4k9TgQPZPalDqFk16gNCxshe9RLUXBRDQJv
	nMIsHcPnt1m+HDmmCVOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikDdK-0001cA-KQ; Wed, 25 Dec 2019 20:51:54 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikDdC-0001bf-9V
 for openwrt-devel@lists.openwrt.org; Wed, 25 Dec 2019 20:51:48 +0000
Received: by mail-ot1-x331.google.com with SMTP id 19so17744982otz.3
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Dec 2019 12:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=oBjvYcZ3TgA4mFATZU/IqKOWbInqGkyGZuvJfXYNrmg=;
 b=XjmCO8tU+gz3LbVjmaCDuVen3pbGxGCH7k1LrJ0za8oRolOwFIBzI4Q8ngNZrDqlcJ
 u5Sf7KMzHn88yJVldzZ3QkMtADUK0Z42jJU9CcxHaVBF7o6aekaGhdVYG+01M/eIhPXD
 qEWZiCTZFNa+izqTkZFBJ5gvlm8MR1SioM5hwrVgYyIzT9rHN6kjmO0zQbFBJG0k4mNv
 BVdD7zZqXU7yMDSzi12ZxamksDiPLLm3jqoq6nje9XKn9gTX3jKnJRiv8gBGoqplK0mY
 HH+9C7KS3lXUphjiTDQPItcm9iCJFfm4Wibpu0QQekorrJWFbknieCfgHjOxCem+O39A
 /6ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=oBjvYcZ3TgA4mFATZU/IqKOWbInqGkyGZuvJfXYNrmg=;
 b=N103Avp+ESIsmnN+MrOabFnxFs15IB5amNAzzB1cE3NvdbD+XzdZjUYDAXZfEf/6s3
 Bxd9DwTJu+3o5QOJ63q1BjQe4GndnfKG935RTfRpbtTDZGFzRNs9O0TdNP6dlL4lrchq
 nogsxUZbxhAYAsVVSiVXW+HRTadNFSyt1IkI0rZOIcTNXlZW43wtYSEtnGpG0ZMNEaEo
 5m8nGXhqkjIBFlq8MtINQFRcR4fuVcAcORBOSJqhXmoXFTI0CGdGwbaKUCyzLIMC0JzZ
 5wX8H7eJJ9pOjkDn2BXXSqUkbakSD70eIkGrwVXZRL3b2mQp7VkxTYIlzSHBSBVcUuP5
 nTeA==
X-Gm-Message-State: APjAAAUfpyY6Lul73JpkBwEGvMQqis8oRkixoenIoOnJkvf3xVpI5IjV
 gTmws3NsxvgUnPFdJAM32Mbc4iNwuWHtVCaSURhGuvV+IZE=
X-Google-Smtp-Source: APXvYqyVqcCVlFR5tmQExorAbPqINnJO/fwGEV10NVoy9WSGsNlgyUr9OlOfvWhoT5TgsTiVcw3JybLGAU52l/B5tRs=
X-Received: by 2002:a9d:6b06:: with SMTP id g6mr37448905otp.93.1577307104866; 
 Wed, 25 Dec 2019 12:51:44 -0800 (PST)
MIME-Version: 1.0
References: <20191128191933.5421-1-rosenp@gmail.com>
 <20191225111701.GI70645@meh.true.cz>
In-Reply-To: <20191225111701.GI70645@meh.true.cz>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 25 Dec 2019 12:51:33 -0800
Message-ID: <CAKxU2N9rckeK7LL2QvoEzghFLENtzNy3i-zFBW7a6RcH3OMcrw@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_125146_356836_081FF5FA 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCHv2 1/3] tools/pkg-config: Replace with
 pkgconf
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

T24gV2VkLCBEZWMgMjUsIDIwMTkgYXQgMzoxNyBBTSBQZXRyIMWgdGV0aWFyIDx5bmV6ekB0cnVl
LmN6PiB3cm90ZToKPgo+IFJvc2VuIFBlbmV2IDxyb3NlbnBAZ21haWwuY29tPiBbMjAxOS0xMS0y
OCAxMToxOTozMV06Cj4KPiA+IHBrZ2NvbmYgaXMgYSBuZXdlciwgYWN0aXZlbHkgbWFpbnRhaW5l
ZCBpbXBsZW1lbnRhdGlvbiBvZiBwa2ctY29uZmlnCj4KPiBJJ20gd29uZGVyaW5nIGlmIHRoYXQg
YGFjdGl2ZWx5IG1haW50YWluZWRgIHBhcnQgc3RpbGwgaG9sZHMgdHJ1ZS4KSXQgZG9lcy4gVGhl
IHRlYW0gaGFzIG1hbmFnZW1lbnQgaXNzdWVzIGl0IHNlZW1zLiBUaGV5J3ZlIHB1YmxpY2x5CnN0
YXRlZCB0aGV5IHdhbnQgdG8gbW92ZSBhd2F5IGZyb20gR2l0SHViOgpodHRwczovL2dpdGh1Yi5j
b20vcGtnY29uZi9wa2djb25mLmdpdGh1Yi5pby9pc3N1ZXMvMQoKU28geW91IHdvdWxkIHRoaW5r
IGJhc2VkIG9uIHRoZSBVUkwgb2YgdGhlIGRvd25sb2FkIHRoYXQgZGV2ZWxvcG1lbnQKbW92ZWQg
aGVyZTogaHR0cHM6Ly9naXQuZGVyZWZlcmVuY2VkLm9yZy9wa2djb25mL3BrZ2NvbmYjCgpCdXQg
dGhlcmUncyBhbHNvIGEgdGhpcmQgcGxhY2Ugd2hlcmUgZGV2ZWxvcG1lbnQgc2VlbXMgdG8gaGF2
ZSBtb3ZlZDoKaHR0cHM6Ly9naXQuc3IuaHQvfmthbmlpbmkvcGtnY29uZi9sb2cKClNlZW1zIGl0
J3MgYSBtZXNzLgo+Cj4gLS0geW5lenoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCm9wZW53cnQtZGV2ZWwgbWFpbGluZyBsaXN0Cm9wZW53cnQtZGV2ZWxA
bGlzdHMub3BlbndydC5vcmcKaHR0cHM6Ly9saXN0cy5vcGVud3J0Lm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL29wZW53cnQtZGV2ZWwK
