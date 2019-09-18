Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3538B657A
	for <lists+openwrt-devel@lfdr.de>; Wed, 18 Sep 2019 16:06:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ukMQRPRx/mh36KVWj9brxwMc39F8pdd9oFaxRAnL4g=; b=cSi7DHEednIubA
	OkDvvO5QCf/eYfKwQ0QonmBPk6N/GT8AIpJeCMryAKZj2qHtpyP8Ief0K7xHhcY5L4OiYGLQI/y+/
	NCJBkD8HW4A/+FMZIXJAL9lp8VrFcZF5rkYboc5T8mGkagcJEWKZdrDg4aTnYc/rszTJS/1U+oxMS
	S/VkWUelQy4T3F7vvsIhZ+0OFMRl8Zi2pJwr2Az2k4k3MpCgoe40DT81Pzr9nNB8Sg/ilHCOykvnx
	p8fFOwf5S65Q+fhJpYtE3sO9yy2fICEMwij5Xmq4ZXsC/wekWbguWtevijQ8GelGrxl5DDDYNmZNI
	jjonVMtfm4lx+Xsig3UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAabE-0000OM-B0; Wed, 18 Sep 2019 14:06:28 +0000
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAab4-0000NX-Ss
 for openwrt-devel@lists.openwrt.org; Wed, 18 Sep 2019 14:06:20 +0000
Received: by mail-oi1-x229.google.com with SMTP id w144so6068842oia.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 18 Sep 2019 07:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=41J8/lMJuDYeNhCVONGeFkp3mdBsiaPnuUzHlzkK+gk=;
 b=cw0RvM0ZZOzkVo4yUBDX/iDjroOuP2RorR9E/mMIoM70WJwYXjG3rE8P+LXuZ+VHIy
 xAl9mxQjHSt4wFUKpsE6Idc6mEUNcqW8uLX1PSKZwdahPVTGQdTjXigzh3BIWNCejKm1
 k5DSn4dy3+9I9j+AT7arv6RaawHzVpBzdyFGyi00p8NA15p1yWCtvjHQOfEtVeUUwXXr
 ne4FkeBMUHCip19RgtWR03IRYRtXd2GBpGOX8mjM8iF9GKgZcvI/wlkgkvQvFOcPpkWm
 oz43s05gyyPZM569SnO2UJjH4iWenBSKV2oYrIcMx9H+8o/OrP3rcAlUmC8l3fU57HMf
 Pq4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=41J8/lMJuDYeNhCVONGeFkp3mdBsiaPnuUzHlzkK+gk=;
 b=o+NhV0/QGqpAN+2j9aVLEliSAZ9qtm+M1mC7Jzor7qFf5oi6/z+o6QRhwyR03jg1SL
 sEiAF/FWFAaajez1bTk1xRZfmFs7Ewbn6L5G/FatNlU4wZDuiVJsCpZ1dEtJeA9GuaCC
 16c7jQ40CPa3DcAFETDP32wkfVFEYfoGLF/LXCXcIVSD71IL1fzAclF5nD9Ay3Ly1AP/
 /OIypVmu6xz6khbm9AQFf+LFspHLG9Q29W4ABln5PwRWlMM7GH5HfAVraYRRyE95yf7W
 28sjnOvwGtsdwyUmyVQeJl+xtEnyRKwi0zwD/GHctdVpCGcVDz89j5q+4kMkrxvIOnTo
 GhHg==
X-Gm-Message-State: APjAAAV3aXXCkE/ivXoO+BAZpT1NIGbEE6VEJmwtTT5dE6XoLr35zhHs
 +1b5YfUdFAqXiv/uYbdXKbYGbxaBaxtsFJaXBO8=
X-Google-Smtp-Source: APXvYqw3yaEesOsPC/K4XmBsC+c+JUsjEltPoNKz3g2vgezDjGzOL0iyx1ymNu8VOyX1rEB3ysVOLATi8E8uy0+n2UE=
X-Received: by 2002:a05:6808:207:: with SMTP id
 l7mr2174494oie.84.1568815577353; 
 Wed, 18 Sep 2019 07:06:17 -0700 (PDT)
MIME-Version: 1.0
References: <008301d56e1b$214f38b0$63edaa10$@adrianschmutzler.de>
In-Reply-To: <008301d56e1b$214f38b0$63edaa10$@adrianschmutzler.de>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Wed, 18 Sep 2019 22:06:06 +0800
Message-ID: <CAJsYDVJ8nr7Dk8gHR63=CT=tv8h6TYpfqky9guKfGFn2_RapkQ@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_070618_932350_CCC75FB7 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:229 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Negative offset for checksum in ath79's
 10-ath9k-eeprom
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
Cc: openwrt-devel@lists.openwrt.org, Sebastian Kemper <sebastian_ml@gmx.net>,
 Christian Lamparter <chunkeey@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Wed, Sep 18, 2019 at 8:18 PM Adrian Schmutzler
<mail@adrianschmutzler.de> wrote:
>
> Hi,
>
> I've encountered the following issue, for which I would like a second opinion.
>
> In ath79's 10-ath9k-eeprom, in addition to patching the firmware MAC address, some devices also need a checksum adjustment:
> https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/base-files/etc/hotplug.d/firmware/10-ath9k-eeprom#L60
>
> For this purpose, the function ath9k_patch_fw_mac_crc is used (below ath9k_patch_fw_mac), where the chksum_offset is calculated by subtracting 10 from the mac_offset.
> (For ath10k chksum_offset value is hardcoded to 2).
>
> However, in ath79's 10-ath9k-eeprom, some devices call this function with a mac_offset of 0x2, e.g.
>
> dlink,dir-825-c1|\
> dlink,dir-835-a1)
>         ath9k_eeprom_extract "art" 0x1000 0x440
>         ath9k_patch_fw_mac_crc $(mtd_get_mac_text "mac" 0x4) 0x2
>
> This would result in a negative chksum_offset.
>
> To me this looks like a misuse of ath9k_patch_fw_mac_crc where ath9k_patch_fw_mac should have been used.

That's indeed a misuse. ar9300 eeproms (which are used on ar9331 and
later socs and ar938x pcie cards) have their macs at 0x4 and don't
have a checksum field at all.

BTW there's another misuse in ath10k-caldata: All ath10k eeproms have
checksum fields and should use ath10k_patch_mac_crc, ath10k_patch_mac
exists only because ath10k firmware doesn't verify it.

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
