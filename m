Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC599ED37E
	for <lists+openwrt-devel@lfdr.de>; Sun,  3 Nov 2019 14:35:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Gf/9UsupcQfhNeT9FOYC922mJh62eiX+chVekZ3Uqk=; b=Y9z8zmc22ljd92
	n7zj+qdDQQkOuroxvfvoOhCflDuIhMZn4TVj4LIqMlzT3f5Cc4oBtOF0FksM/olJMN+pbkzvlxHqB
	iN3rkVRMinML7xHWH8yBcRC/s/yOZWA8P0PhCnyGyDbnkAtpRdTkBg/vq7F55g4Nrs3sigNUrmFkT
	/kt7647lTMfYRcXAqYBr3I/9e5OPY4j++6IlGLhLB85PGT2MF94ptFDqDFRFCTZdSA32l/re119O5
	mkrEi1OcH/hx93f+EIxxo7xhEjprrb4cFYqhs16k5bcgPmNqQLhcI1vxHvHwDzX7dP50ODtocs1jj
	9Rkho0pJkH0imzlDMHHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRG2I-00028d-Gk; Sun, 03 Nov 2019 13:35:18 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRG2B-000281-Fq
 for openwrt-devel@lists.openwrt.org; Sun, 03 Nov 2019 13:35:13 +0000
Received: by mail-io1-xd42.google.com with SMTP id c11so15579741iom.10
 for <openwrt-devel@lists.openwrt.org>; Sun, 03 Nov 2019 05:35:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6OORxzp0sZ2lVQzaXVvNPftozSsNTgU1NK8XbJkJoiY=;
 b=P/kw0cDFYlprHKPIPYFV3XSaLhH3FWegRSyJ1PCZkgJICV5VS8Q/Dv9gqPC5hK4NM0
 n4wo/FeFVou58bksQ031BU+cWTSQBmWZ80Bl3DC343WURgRlOU+zbFpnXzZk5warmNGb
 iNPwRzi9b20Qmaz5Sj8YM3r8HNDBF5qMj6L2u6adv8yqDIaDy2GWWXV1yFRXX2IBRbJB
 oIwI92+3bzT6+If3OrLtVlW9HKjbpbJo2TUUpj6u+ppf6LJc4uaXIvWH/kZLmFlxPUAE
 UcZ89xtd5Dho10/UVqAC2qu0yZTBP9Hmt6p5bfSeMV37wTnAVST5DnYJsccnz8buj8Cf
 6UxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6OORxzp0sZ2lVQzaXVvNPftozSsNTgU1NK8XbJkJoiY=;
 b=E+pveo5zCuH0sxJp+cPIYsYU1+e45o5q6Usd6/Xtn3sQC9D3+vLENWyYzJot334lxv
 ZGSliDHL7DozvEpL9WHSTcoNig68si4x0aFCb76UJrCghjOwXpad6QV4AJS/ioWHnfci
 dGsfFSaa+SNHyCYuK7mofVzqILXrelhgOUp0Xbr2ffzROXF+wTwUPtBjvt67GQU1xZgj
 Ynu2tZUynGWeH63hTcEiAEstQxclQkVWVv8h5smaMVni0oQ7S8gkrOWJn7oOSxEqkZW/
 cr0Lg6Crjlo5wePEY1XbzCPh2ZOgBhnED2ykMJK4gMPTETNOk2jjGh3XKsJN++D4TAFY
 Aimw==
X-Gm-Message-State: APjAAAVn2MSZRCjPSn3I+cW4RVwm0qvz39B1cueIKhAdtutNK5dCOH+1
 UB2SwR8/lkOqZhFWoBSceoYUC+UnVY7pVRYjd1326w==
X-Google-Smtp-Source: APXvYqy2rczdhCR3GAYaR+5zyHfGt2MZ9exkwALTUV3Tkd97iOE4BLQ8jmCOWUijn3z2AfX5ObBeV6JFAcTy91BYZ2k=
X-Received: by 2002:a6b:6509:: with SMTP id z9mr4770895iob.123.1572788110011; 
 Sun, 03 Nov 2019 05:35:10 -0800 (PST)
MIME-Version: 1.0
References: <20191102141855.22192-1-kristian.evensen@gmail.com>
 <20191102141855.22192-3-kristian.evensen@gmail.com>
 <003c01d5923a$fc6d07e0$f54717a0$@adrianschmutzler.de>
In-Reply-To: <003c01d5923a$fc6d07e0$f54717a0$@adrianschmutzler.de>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Sun, 3 Nov 2019 14:34:58 +0100
Message-ID: <CAKfDRXiQNTFAEcyBFi9zon1OOCZ_do1ABep4dPRBepkXjB2pXA@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191103_053511_554170_8A33E32E 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v3 2/2] ramips: Add support for ZBT
 WE1026-H
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

Hi Adrian,

On Sun, Nov 3, 2019 at 12:36 PM <mail@adrianschmutzler.de> wrote:
>
> Hi Kristian,
>
> > -----Original Message-----
> > From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org]
> > On Behalf Of Kristian Evensen
> > Sent: Samstag, 2. November 2019 15:19
> > To: openwrt-devel@lists.openwrt.org
> > Cc: Kristian Evensen <kristian.evensen@gmail.com>
> > Subject: [OpenWrt-Devel] [PATCH v3 2/2] ramips: Add support for ZBT
> > WE1026-H
>
> I've already pulled your patches into my staging tree, but then stumbled over the USB LED as Power LED thing:
>
> https://git.openwrt.org/openwrt/staging/adrian.git
>
> I personally don't like that very much, and it also doesn't strictly match the policy of sticking to the vendor's use of LEDs. However, we also do not strictly follow that policy for other devices, e.g. the TP-Link CPE devices where one of the WLAN strength indicators are used for signaling.
> Still, if the LED is assigned to USB it will at least irritate some users.
>
> Despite that, I remember that for TP-Link WDR3600/WDR4300 a nested setup was required to get USB hub working:
>
> https://github.com/openwrt/openwrt/blob/master/target/linux/ath79/dts/ar9344_tplink_tl-wdr4300.dtsi
>
> Maybe you can get USB LEDs working as USB LEDs with that.
>
> Since you seem to keep track on your devices, I'd also be okay with removing the power_led alias for now, merge the device support, and then address the USB issue in a separate patch.

I have no strong opinion either way, as the device is inside an
enclosure and no LEDs are visible on the outside. So feel free to
remove the alias.

BR,
Kristian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
