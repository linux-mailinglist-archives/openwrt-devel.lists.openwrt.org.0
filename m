Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85E2585310
	for <lists+openwrt-devel@lfdr.de>; Wed,  7 Aug 2019 20:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=II5ypDhY24ii4uDBRt32f1PZ3CUCyKKmkJ9W231lz9c=; b=udrAqYkZIAWAkO
	aJLbpxkpb+d6sMvMz/Zx3IkPGyQ+ehIapvcBnZxhe2k6yIa0km2qYq7B7XBNayuW42J3I4mUv9wvV
	554sPOumU5l2l+l0h9Rd06kGnbLixGdgYJGyGHYj1hh/+5a0J8gM20MwFXV6ta2l36vDg/P5Ngrnp
	AWO3FfG2b4U7zDYh8ZyJ1h3i79xHtJXiJFmVkvAghUdOPXyVARqx00lC/AvqzBMBE8d8r+n8i6l3d
	qJmplzDL20pIMU8c9kFLzHUbOfh/sm6mf6DqBG6Z54Xlum5u+OZiHfzIEdMpdljQndaL3YPiPJalq
	b9Qk3e1JmfHXV2LkbvaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvQrW-0007LN-2c; Wed, 07 Aug 2019 18:40:38 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvQrL-0007L1-7I
 for openwrt-devel@lists.openwrt.org; Wed, 07 Aug 2019 18:40:28 +0000
Received: by mail-ot1-x343.google.com with SMTP id j11so7913092otp.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 07 Aug 2019 11:40:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9TGXrqd+jtwndlGZ4e1fRrPGDBb1roFxd6Do05DgEKo=;
 b=DvBklKiF+OQztjie2w2iYfJgop0oHKHcYhLpm+ADAABEi4lz3xhxxSd3X+Hngef0Iu
 d2ZionK26i/9AcRietsWyVljCke4wyMNeeRJ8b3VSzdu4JVOaKqu0VGMMqRVjvB1+Hjm
 xiiakdMvR5iCqG3CE3FCYmdfcOtKG5R1QkIGLJSp1lKxhYvn8DYfsmrPljfPqXs5FXzH
 8PGZMo778emXGuIqN/fz83oVlyCPZmHmAW+JD2a2OXIi7kXINM+t0iW8janIzFnI7Isj
 513KTPQ29n4ftwXku+NE05kglUW5DcXTxIevKzjs3YCWWeE0nz3apnppqy2hTPeujxaw
 qIxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9TGXrqd+jtwndlGZ4e1fRrPGDBb1roFxd6Do05DgEKo=;
 b=XPJqeZMlk//MAQl7XkrGfSoABqz5JeMHYChgkrSX5nX3OEzUk8OVxSDbIxnlZX2loT
 PM/FSXMuaqdEdISbQ/itQJUWWIGoh4ZUJIHgt2Ig9tkyMkYN08bwBRA1BHjfjCmozsCv
 OQXNcMzHvbOPeMmeWifwSySdoKYQC+k+GF0x7rPL1XmuZ0FIvx88apRwYh2C8Nk9TH9C
 PEizd1n3ULouQ/3O2bgdrpUw9fSEim3PTZbTBfXRqnvyABXz/ctqUi3JwmY+AHEtVK5O
 GGABeDgUct1WJbQ++29gSRZkqJKAOyGgKv12uZ1ohOiFajAL2zFqesADL4CBQAc2+7nC
 s0Zw==
X-Gm-Message-State: APjAAAUzwh3Vccbtev7lisOIUnvRZwkM3Ufj01fgRgaMZtUb3koAyWC+
 YDdrC1cXACGq0LqWhI0FtI8+neyn/apkc9FM21U=
X-Google-Smtp-Source: APXvYqxWn3Dm2JaDtMzG/fim/oYk3QeQ5DJJFAmITXMCc2qeZDSef58AzF0HcqrQLRzy5D167s+UNET5VFerOnPfsaY=
X-Received: by 2002:a02:a703:: with SMTP id k3mr11426798jam.12.1565203224633; 
 Wed, 07 Aug 2019 11:40:24 -0700 (PDT)
MIME-Version: 1.0
References: <1565200503-4224-1-git-send-email-hanipouspilot@gmail.com>
 <028601d54d4e$5456f330$fd04d990$@adrianschmutzler.de>
In-Reply-To: <028601d54d4e$5456f330$fd04d990$@adrianschmutzler.de>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Wed, 7 Aug 2019 21:40:13 +0300
Message-ID: <CANoib0Gj6L=H=-hadUMgmCXk_mbU631==RZuG8P6KmfT0dJhgw@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_114027_295913_5E7A69AB 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support of Netgear WNR3800
 (Ch)
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

> in commit title/description, you are using "WNR" instead of "WNDR" ...
Oops.

> Despite, from a quick research, it looks like the device is called "WNDR3800CH" most frequently.
> I would update the name accordingly.
I copied the ar71xx name, but I agree.

> Note that you also have to update to DEVICE_VENDOR/DEVICE_MODEL syntax ...
I don't quite get it. Where is this syntax?

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
