Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D42F1807D4
	for <lists+openwrt-devel@lfdr.de>; Tue, 10 Mar 2020 20:19:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjmKeDo1kQEboP/bZLxEbdg+D9HEGGt1HJgDils7II4=; b=Db8DoRkFShyo6m
	A5pmpOGyr0FsEJw59jNwXbBwXgy0XQZDUGCgfxfmQdvNOOppxOAEuJRFN6J3dD1VV/NMS0BuX1R2M
	CwIv7/+v/BJ2h21+zBeB6CXLUhiVXf2k+3ppAwf+ZBrSnwFN/h+rmM7Ra6ENqcXm37KX+6zvo4Hk2
	M35UcpBea9F1AfheF018esWR5SqjGOAg2Sz/i974oNA3BFoqY8tE6Gux+75F1YtrIGyN5GD/hqUSC
	fnOrBkduncOoYXBQL3n6CFf6/097/+at1Ymddkg6LS4R+GgB8x+ocE2vFSpWqI542P1FX1fClPa/5
	rusFnI4XdBgD3bdqMJsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBkOw-0004Wl-QE; Tue, 10 Mar 2020 19:18:50 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBkOo-0004WS-JB
 for openwrt-devel@lists.openwrt.org; Tue, 10 Mar 2020 19:18:44 +0000
Received: by mail-ot1-x343.google.com with SMTP id j14so14343802otq.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Mar 2020 12:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gtbFfc9lTOX/je6e5Cv/DeJBicLyTLlvH6OLV2rBWrM=;
 b=Y62dBy2D5lKfNTN3ldjWlb3jLGNfCMe6wVRGBfrjOJDnzr7I7+0vh9nU625TsPPSbd
 oDbeZbQN5dXOP5a179ptDuQuBeVO60NeWgxO6YLo46IxXxFKsdYyilNFCYQIHfgmVnHn
 +ZEaVC+NJBhbuzD2mNPrrrmdv09j8GtZ/2/ys30amQC7UdVgu4q3qClnDV1FP5r3p9mH
 DbIn0ztpiCCE9S5Ly1bZDICBcyccc5SKg7ayX8o862Rb40OVcbCFhXwI9BS9Zgkrpk8a
 q8oki7bfANVzebFqthkMfZJBWuHbgV7Nk9rGlTkZqY8AYPLlaCv1ljyAwrZXT91ohMSE
 9Vwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gtbFfc9lTOX/je6e5Cv/DeJBicLyTLlvH6OLV2rBWrM=;
 b=BDLxo9bdmEon3zv2ZS7WHKItID1Wh1dRSwqYTcTWxTaURM4NWsP3GogHLh0rr66pF8
 0WPE4kVoGmcE2hnPReJtuqhNIyoeDSn8sAEny1Xu7u97h3V13Pa8a7GT0pFlKy83FbOA
 JEkuZSPMksOg32QFW5AHYg+l62OdZhyuWY384EJTXdCdTYVxlm9XY0Fb1k4EpimifXPI
 g4hb2UtXTQom/4enSIBMxs8u09+ZHk/KBbSeCXlbKEOyfS3gt8Uw3eqe5XiFWpHbfDlM
 CRcbhaWeFlr394+IIXzcwvN44/pPFcD35FwM+NHHd7PlTbB579q1FtziFViu07LaC1sq
 fLqA==
X-Gm-Message-State: ANhLgQ3us/qJJCFps+2Sv9pEMEgiXa5f04Yx0dpLHFzECPVyZCQ5dfbf
 vK3ZNAde0yTdt1j6+IjmmbWj0NKyR+GPjJzguFi+R0y/
X-Google-Smtp-Source: ADFU+vtBIqCqJyu6bTNJE20ksAN3Ky4fe9nusBjVYy632jKavQfFSY9keBEEcr/ZiwMBDgERw0F2JcLvcuMJ7YBPgms=
X-Received: by 2002:a9d:20e2:: with SMTP id x89mr16926395ota.252.1583867921474; 
 Tue, 10 Mar 2020 12:18:41 -0700 (PDT)
MIME-Version: 1.0
References: <1582909004-2383-1-git-send-email-tharvey@gateworks.com>
 <3aa97de0-f938-cf78-1b1a-9c8307ee0569@linux-ipv6.be>
In-Reply-To: <3aa97de0-f938-cf78-1b1a-9c8307ee0569@linux-ipv6.be>
From: Tim Harvey <tharvey@gateworks.com>
Date: Tue, 10 Mar 2020 12:18:29 -0700
Message-ID: <CAJ+vNU2-aE9sWEp=TiEnHFrM_69j29YqU4uydqTzGzh=YEvbMg@mail.gmail.com>
To: Stijn Tintel <stijn@linux-ipv6.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_121842_765736_262F56F3 
X-CRM114-Status: GOOD (  12.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: can: add MCP251x CAN controller
 module support
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

On Tue, Mar 3, 2020 at 2:49 AM Stijn Tintel <stijn@linux-ipv6.be> wrote:
>
> On 28/02/2020 18:56, Tim Harvey wrote:
> > Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> > ---
> >  package/kernel/linux/modules/can.mk | 17 +++++++++++++++++
> >  1 file changed, 17 insertions(+)
> >
> > diff --git a/package/kernel/linux/modules/can.mk b/package/kernel/linux/modules/can.mk
> > index c2c7411..3bf0359 100644
> > --- a/package/kernel/linux/modules/can.mk
> > +++ b/package/kernel/linux/modules/can.mk
> > @@ -146,6 +146,23 @@ endef
> >  $(eval $(call KernelPackage,can-gw))
> >
> >
> > +define KernelPackage/can-mcp251x
> > +  TITLE:=MCP251x SPI CAN controller
> > +  KCONFIG:=\
> > +     CONFIG_SPI=y \
> > +     CONFIG_CAN_MCP251X
> > +  FILES:=$(LINUX_DIR)/drivers/net/can/spi/mcp251x.ko
> > +  AUTOLOAD:=$(call AutoProbe,can-mcp251x)
> > +  $(call AddDepends/can)
> > +endef
> > +
> > +define KernelPackage/can-mcp251x/description
> > + Microchip MCP251x SPI CAN controller
> > +endef
> > +
> > +$(eval $(call KernelPackage,can-mcp251x))
> > +
> > +
> >  define KernelPackage/can-raw
> >    TITLE:=Raw CAN Protcol
> >    KCONFIG:=CONFIG_CAN_RAW
>
> I would have preferred if the name of this new kmod package included the
> bus type, as with the kmod-can-usb-* packages. I actually had this one
> queued in my staging tree as kmod-can-spi-mcp251x. Also, does AutoProbe
> work for devices attached to the SPI bus?
>

Stijn,

AutoProbe does not work for SPI bus so the module isn't auto-loaded.

Regards,

Tim

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
