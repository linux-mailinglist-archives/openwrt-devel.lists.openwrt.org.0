Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7751EDFD8
	for <lists+openwrt-devel@lfdr.de>; Thu,  4 Jun 2020 10:33:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1W765MWetKcB+jZHlB+CQfz8l2yvQuukbxDqI3Xk+9c=; b=NL4u6wmeEqkphI
	aP8+NuniOM2VoUeSacy/8INHIqHrSYYKUfWnwR9doOPLu4p5K8GmgaZFsOsope2lTUghFlOE6BNsi
	soBRzGj0+WGRfCmFoBncBpQVm0eunvyY3fwYLIpOyhPnyNtaL/hgIvlCICdh/0K6mWxwOfvDbDcwo
	dFtBDgBd+n2rBr2W8UhRnlnM2hYoOKO1BtP0HLPNO3K8TBa9W1DIjHqFZVqs5+cBp6ApRnpK32hJX
	bfDMhecKuig0Cj4EG+Jho/h6r4ZRT6OOpdfPFxlJm6ZC6FUH9qAIP3TFt04YwbhoCBTm1fxjKs8Lw
	pQCr2un839Of/V/LUNNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jglJH-0001al-5u; Thu, 04 Jun 2020 08:33:11 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jglIx-0001Nh-Bz
 for openwrt-devel@lists.openwrt.org; Thu, 04 Jun 2020 08:32:53 +0000
Received: by mail-wr1-x435.google.com with SMTP id p5so5079675wrw.9
 for <openwrt-devel@lists.openwrt.org>; Thu, 04 Jun 2020 01:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BbrfOJ1BSVgI4xIAKI/mjcocTqR23XTu84Ci3igc3qI=;
 b=H8iRNthdMTY7gbC8VdKsOUhP3leZ6d/ZHg4Ms076OovPo70NlKeLwiBD344TcPA14c
 kDj4NroQK3PLTqhTJQlJx4hCwqWFiy59IIyvslwLhh9+oVWdbZLEfNdjdeo3X9sOuuGR
 0dMAzyAR1NdchQ0oTxjQBRLHmEFqLEJbPOsEEyUjLOhhdkuJ/7Qr/qj5xKxQ4W1Q9f3r
 urLTjkzqouaDcKZcSmMGi2DGtIYiAYi3rXf9e3TRTZBf1hvuGcXPlXvjH4PkzTvr8Ac4
 +aoRBAPsrFCV6ahQq+/4hZLgv/DhxNlD8I0dWTlp8Zkqb7kK7HkqxfL+DJ1unooVmUAo
 /yFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BbrfOJ1BSVgI4xIAKI/mjcocTqR23XTu84Ci3igc3qI=;
 b=BcQZbQ2igYUQW6mlHUdDJM7CWguRZv+mrTA30OEYk1MX24R5lLQAZHL4i9FhGPre1X
 moLvwx0EnyYAcVaU2vo7E5r4y0AJS+ANPl6iFjll/DF1hvlQvI/6ptEt3HXEWpkKkxLz
 hPWanOII9lBAYranIFeAqZG+viGB76P3GNmQQ1PXfsx2JCr5pnRZ6S8DXjE937Uxokw5
 5je4YNHQBT8S50i0k4fUI/NnJE9TQnv10RsIPoEak489d2HWpxuS/JZqmJWeWYCYTveq
 E8iwkwnPUh5O50HCYdhS0TYUVJ63WwJLdl8kSujOn0gmd/5FH/EXe/dmcr76CjMyJBR2
 Jg3A==
X-Gm-Message-State: AOAM531+TUjANT015uzE6BGG8zYZFHuBgZMcWrUBCr93PgMhPVKB1XvP
 cWzkboDjdUxdvaOyktPl5jGfkUjSuyDogJjf2Dk=
X-Google-Smtp-Source: ABdhPJy04eukY5DTGAtUV3Rj+1aTSOZnp14SGWEgw79dnb01+mRncODTSDyQhIhc1ctFSsOzSHjTbd3LdVBQ7UyGMMI=
X-Received: by 2002:adf:dc42:: with SMTP id m2mr3501888wrj.342.1591259562196; 
 Thu, 04 Jun 2020 01:32:42 -0700 (PDT)
MIME-Version: 1.0
References: <004f01d63a45$ea621820$bf264860$@adrianschmutzler.de>
In-Reply-To: <004f01d63a45$ea621820$bf264860$@adrianschmutzler.de>
From: =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Date: Thu, 4 Jun 2020 10:31:14 +0200
Message-ID: <CAJN1KkyN=0P1s86zRJJxBrUVUQJsR=E97W3R0wNADCAHd9jQyw@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_013251_440170_6733B62C 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [RFC] device compat version
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 04.062020 at 09:58 Adrian Schmutzler <mail@adrianschmutzler.de> wrote:
>
> Hi,
>

Hi Adrian,

> we regularly encounter the situation that devices are subject to changes
> that will make them incompatible to previous versions.
> Removing SUPPORTED_DEVICES will not really be helpful in most of these
> cases, as this only helps after a rename.
>

I think about it when kirkwood was migrated to DSA[1] and when was
possibility, to broke sysupgrade  images in EA3500 and EA4500 [2].

> An easy way to address this would be the introduction of a
> DEVICE_COMPAT_VERSION to the build parameters of a device (and to
> DEVICE_VARS).
> This could be put into image.mk with a default value of 1, and therefore
> would be applied to all devices in the tree automatically. It could then be
> inserted into the image metadata, and effectively lead to a similar
> comparison (and message) like done for SUPPORTED_DEVICES now.
>

IMO it should have three stages:
1. unconditional sysupgrade
2. sysupgrade -n required
3. no sysupgrade possible

Some devices need only new config like switching to DSA [1].
Another need back to stock and reflash with factory [2][3].

> If an incompatible change without migration was introduced (i.e.
> swconfig->DSA, sector size chance, whatever ...), one could just bump the
> DEVICE_COMPAT_VERSION in image/Makefile to the next integer only for the
> affected devices.
> All older images without a defined compat_version would just be assumed to
> be "1" or "0".
>

I suggest use X.Y notation. Default will be 1.0.
When Y was changed, only sysupgrade -n is possible. When X was
changed, only sysupgrade -F should be possible.

> This should provide an easy option to indicate an incompatible change to the
> user, without having to bloat configuration too much, as most devices will
> just stick to the default forever.
>
> Since I'm not an expert of the sysupgrade mechanics, though, I'd be happy
> about pointers on whether/how that could be implemented.
>
> Best
>
> Adrian

[1] https://github.com/openwrt/openwrt/commit/4fd7e539e4f90128bdd7cb71c729a4b32f5de86e
[2] https://github.com/openwrt/openwrt/pull/2977
[3] https://github.com/openwrt/openwrt/commit/1680ae7eae2602dd85463a71f88d0012b236bff7#diff-896e162a6bfaabcbd8f0214d7894109c

Best regards,
Pawel Dembicki

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
