Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED451A4F7A
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 13:07:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdC8lcbfPQJTGYVHc258BrG6ypdGYhEsUIKkwEPJiq4=; b=BEMhiUk3bv+n+B
	pidjeIxskODerwSHU6avm0iS+F41nwlEqrFtHx5yKodghpIc4klsmKOLn+ej2uy4g9kKQZ49NUKRI
	3pc2ZsWbrVGWXElgSiWOpLjx4kff/xHlP8r1cpVNjqAY1BDU0psIXueU9oOBwbGHfjeeEp/eddFtO
	+TJT833tBylywSGuelyliBzyKqvDHwHlvZHL0YbnWXgpPtXMoBowuABwuS9luPjCkeEqouc22QvGM
	iRlh+XNXfASTEuuO2R0HCNjyirTwbzdobQvctH4S37pUtV6/Iy97J0bpwTS0kPSBd9rYBgQHp2tdH
	QFykF39RGCdGgU/SUYog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNDyg-0001gY-Rh; Sat, 11 Apr 2020 11:07:10 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNDya-0001gC-4U
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 11:07:05 +0000
Received: by mail-lj1-x22e.google.com with SMTP id q22so4277707ljg.0
 for <openwrt-devel@lists.openwrt.org>; Sat, 11 Apr 2020 04:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OWcr9Dxp15GRSjLH1Xxx/FZUrkX+FDE34PJaZS+jVR0=;
 b=biRg35i8npc4GrD8dZPVx/WtpV/Sxm0Zmep86HzzpnTisMNrf6EJvbo5CQTegzj7Jj
 YrAk6aBsotAvuSsaJZJJIX2O4TVRdPnAzglgsTjluj9dpjXzbvKVm6d+QjqdM3gVfl+B
 dUF5O6cb+kW+oshcRxpYAaB0WX5/eNSxHFK0xeaBZmspvpQ1Hs+Ov5tmPS1tq6F6pRN2
 VpynB/TlP0NTKbWFLuQ971NWQGpue+FvqDCae6B9cg3keFDj5vWtL+VLRRgvVWRsiud2
 Rncr4U//VNhiMmbXZgYvVobGjma60SwP21vughCwDr7GzVRWospEASRmXtwV9cRMDU55
 agdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OWcr9Dxp15GRSjLH1Xxx/FZUrkX+FDE34PJaZS+jVR0=;
 b=shKTcR09+DYyFZEhsf/CxRPDCiSF1mXUDDhLsBGshhjee1ixioBA0lZayV3y2+zDOF
 wGA0c5758Cabp5beAyQvllyqVb/0iNknJagItk2mYcI7uFfkRAgVldPKrfbG6lC/+vUd
 nGfy0Ar+t0HSo0j3SQ0doeZQfgWAsfV427HsKWN/TDm8c1nhLwZXsWXPNIuIpxOTKplm
 1YJpJpQ0+ZUbnzgPBz7sbcyixiTsKkU7l+exR2G4i/R0ZcmtWsj2RgINvNnOADOXf+Mx
 lwuQjc4ltbGqLhRI9yhJepMD6wZiDEY1KVVP/aWAiQaSuNVkRMyBo5hYIJxRx4R6DWPb
 qLQw==
X-Gm-Message-State: AGi0PuayJBc8EWvKvuGfumhbXzyrjNJrNbpoWRjqiyU7QOps0HALdE1A
 fhtU8WdOH3aOPYAo9v/0IaY=
X-Google-Smtp-Source: APiQypI3diR2paRZIrPgb5IP+KVA9OyS5UX9Nc1jg++MZAjkfO+yyjDDVDp9ItIUxKzgjyBDS6i3kQ==
X-Received: by 2002:a2e:9256:: with SMTP id v22mr5395494ljg.286.1586603218041; 
 Sat, 11 Apr 2020 04:06:58 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id w25sm2783401ljo.78.2020.04.11.04.06.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Apr 2020 04:06:57 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 03BB6rH3023247; Sat, 11 Apr 2020 14:06:54 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 03BB6r7Q023246;
 Sat, 11 Apr 2020 14:06:53 +0300
Date: Sat, 11 Apr 2020 14:06:52 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: "guilin.wang" <guilin.wang@gl-inet.com>
Message-ID: <20200411110652.GA20080@home.paul.comp>
References: <1586512009-613-1-git-send-email-guilin.wang@gl-inet.com>
 <CAFBinCCQQW7_E79CAYZnJSSEYtDbZjeUB34UZzsSo8HF9nE6Hw@mail.gmail.com>
 <tencent_180A37163F380F9E4F3D22A9@qq.com>
 <20200410111002.GC23797@home.paul.comp>
 <tencent_0151EEAE23D8D82C2EB37A96@qq.com>
 <tencent_6BC0797643213F582FBE3256@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_6BC0797643213F582FBE3256@qq.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_040704_201155_C72D27EF 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fercerpav[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] om-watchdog: Add support for GL-X1200
 (GL.iNet)
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Fri, Apr 10, 2020 at 07:23:44PM +0800, guilin.wang wrote:
> now the external single-chip cannot detect the level change of GPIO

How often do you really need to feed the watchdog? Why do you have an
additional MCU taking care of capturing the level change, what else is
it doing? Can this MCU firmware be upgraded without external hardware?

> I now suspect that the wdt-gpio delay is too short and the
> microcontroller part has not detected a falling edge change. I tried
> both toggle and level,

With gpio_wdt driver when you're using LEVEL mode the GPIO will be
pulsed (high level for 1 us (microsecond!)) each time the watchdog is
pinged. With TOGGLE mode the GPIO will be toggled each ping.

Default watchdog ping frequency in procd is 5 seconds.

You can see more info on [0].

> but unfortunately both failed, and I will continue to test.

It's not a matter of testing, it's a matter of understanding what's
really going on.

HTH

[0] https://openwrt.org/docs/guide-user/hardware/watchdog

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
