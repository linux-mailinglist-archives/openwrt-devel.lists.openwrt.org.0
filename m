Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F3267974
	for <lists+openwrt-devel@lfdr.de>; Sat, 13 Jul 2019 11:13:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=REOhyLHdfa26oPd4maiKjGfNHshBUqKQNSWq1DBCG4A=; b=J+Oty//xAgsbhj3gyXTed8FrI
	HQrQDUEUaYKbvfD/zCIs2cBQVdYKV2kWsV8LfoDYBE9aUUeRMXIfUQz2dGdgf4jYa/N18pEqXitRb
	sTOpbUlQbEJZZS0gjAiOWT0CZ/HzAPoMsSco+YKzHXzFDJlJ7fyyAIJquHQW6giULJ0Vv4HVSzxKl
	qeluC74QwBdmacs6miCBTIDy+r/X4CxHCi7Y4aPWXz/Pfzc9tjVN0nqZGtU0yUeELHK89C1jotzhy
	Cv5jjUa+xh1I+rll783xM2AvMte7l1F2cbOtO/wkoYA5XXLnQKkd5NYQboY5dt7jKbcUA6d/RK/D1
	NcC4dVaMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmE5Z-0006rx-Dz; Sat, 13 Jul 2019 09:13:05 +0000
Received: from volatilesystems.org ([51.91.248.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmE5N-0006rL-6Q
 for openwrt-devel@lists.openwrt.org; Sat, 13 Jul 2019 09:12:54 +0000
Received: by volatilesystems.org (Postfix, from userid 112)
 id 98D55FB1DB; Sat, 13 Jul 2019 11:12:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1563009167;
 bh=xNcg9wptFsim8DCIqhilM0wWUt2D7O52js+tCFrCNYQ=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=WITZm0LKkuEW4QOZrX0b/4qUuBv2SesRA7atYzRiIrCuvg+ZGbrsD2eczuEDzGfgo
 DFM9k27ugWV8dUDmz1XFAQ0FXsk1zcKAGyW/qXQGI0ooxR2XFRa0dFSn0ChGJ7/QVo
 H+rY5oIroRP0g3ZmBox7Z2PtcT63mfzcnAieoz04=
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on atalanta
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,URIBL_BLOCKED autolearn=unavailable
 autolearn_force=no version=3.4.2
Received: from [10.0.0.10] (213.219.168.236.adsl.dyn.edpnet.net
 [213.219.168.236])
 by volatilesystems.org (Postfix) with ESMTPSA id 4508CFB1D9;
 Sat, 13 Jul 2019 11:12:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=volatilesystems.org;
 s=mail; t=1563009166;
 bh=xNcg9wptFsim8DCIqhilM0wWUt2D7O52js+tCFrCNYQ=;
 h=Date:From:Subject:To:Cc:In-Reply-To:References:From;
 b=Plc2jL3Rk3DTOMMfdlXJsa+AyDfZUxTvggeY+WQyr2/KvJeetK0TCbzRa1xMnV7Zb
 Wr1tnT/ntNAJZx6YqwthG1xbNvwIkzQ4tB4WBhYIKLlZgBZBVeCBiTBsVx/oR+T9pr
 10WLhCeDKvkmVIwXU1xTvEF7ePi1Yxpa5FeBXMJo=
Date: Sat, 13 Jul 2019 11:12:45 +0200
From: Stijn Segers <foss@volatilesystems.org>
To: Chuanhong Guo <gch981213@gmail.com>
Message-Id: <1563009165.1905.1@mail.volatilesystems.org>
In-Reply-To: <CAJsYDVJ_OcQ=pqwnwOfQQ5QJGs9fQzb7pE0wy0w87V6uj7i+Tw@mail.gmail.com>
References: <20190713084747.9347-1-foss@volatilesystems.org>
 <CAJsYDVJ_OcQ=pqwnwOfQQ5QJGs9fQzb7pE0wy0w87V6uj7i+Tw@mail.gmail.com>
X-Mailer: geary/0.12.4
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.101.2 at atalanta
X-Virus-Status: Clean
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190713_021253_444529_11AE4C99 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: ASUS RT-AC57 only supports USB2,
 not USB3
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 David Bauer <mail@david-bauer.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


Op zaterdag 13 juli 2019 om 11:07 schreef Chuanhong Guo 
<gch981213@gmail.com>:
> Hi!
> 
> On Sat, Jul 13, 2019 at 4:51 PM Stijn Segers 
> <foss@volatilesystems.org> wrote:
>> 
>>  Commit 14e0e4f138e35c3e2a15cc3a836c939547ee053b added support for 
>> the ASUS RT-AC57U but erroneously
>>  included kmod-usb3 whereas the RT-AC57U, despite the mt7621 SoC 
>> supporting USB3, only has a USB2
>>  port. Make DEVICE_PACKAGES reflect this.
> 
> MT7621 uses XHCI controller for both its usb2 and usb3 ports. It needs
> kmod-usb3 instead of kmod-usb2 even if that's just a usb2.0 port.
> 
> Regards,
> Chuanhong Guo

Didn't know that, thanks! I removed it from Patchwork.

Stijn







_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
