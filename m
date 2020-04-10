Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 953131A457D
	for <lists+openwrt-devel@lfdr.de>; Fri, 10 Apr 2020 13:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qh/p6MNEo9Rfyrk2vbO4+a7Mafueo6uL4Dbsh2b38aQ=; b=Ftv6aoogVLrKUV
	1d9n9tX+RK7KFMouHaP7IGnKbx9SyouagT+HY1c0uT+3YeBBYCImMpalXyjAN40N60Kx5gg5Pi7sY
	ASmA3NRnqIGwXbaBTwbdYDy9vVWk2v+XekG9wX88ZuNqUq6d7flw3vnb45n8sdK/J0iAGGoa4TbRj
	jJRqw9hax+CobjWb+SLm6+aXNvnbmGhb1t3Mh9YJ7VjWnsKhHOwSkpf77fS5yEUBpX8P6wu3zAplL
	7eCnNvx0IfGuwRoV19CiYgG4G6DAI1rAQoFa0UgPaUwIJ9MN1WlwrOmvpmnsFXsRWsFQ4HhItvQY6
	BeKuW74BkCIWg5CQwrBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMrYB-0001gj-Da; Fri, 10 Apr 2020 11:10:19 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMrY3-00013t-B0
 for openwrt-devel@lists.openwrt.org; Fri, 10 Apr 2020 11:10:12 +0000
Received: by mail-lj1-x22d.google.com with SMTP id q22so1637910ljg.0
 for <openwrt-devel@lists.openwrt.org>; Fri, 10 Apr 2020 04:10:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=w/2sRB72S3I1cUMmLoc+hthdgpeDBaNXGOmnuc8mWzc=;
 b=coefxn1IEH6tqHq4IkuDqLqggJ9xCh+pCw11NV0Ad0AjxsyMke7xrGrd7DLdVcQEWO
 JNGzUeDioBDVzKrIYPkprRYx9psnwrgsHhLWleHC/CZxK2OwTPw+zAZGTjS4m5EdmPYR
 ucQIC6vyquCwsgQj/l6hyir7uScFfzgJyqs5gMoSM95J73nvBpo6q8XWObMYf8LH2H5M
 k3V8uUvGdo5p2oQYrB9LfduAazjSHsf4MMJ+NXAodeABT/b8VSdEJBdIOy0BLIOe6PMm
 9ZpU01fEwmJDQtrHuUL5dqxeAsdY5Q26XajZASIN61R+n2poA80oLhqp4tqaTTcSe7+/
 rM0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=w/2sRB72S3I1cUMmLoc+hthdgpeDBaNXGOmnuc8mWzc=;
 b=oHFTa2JyEmGK3zjDh9RqJHK7Qgy8gXfOra+TXc012wdG3tA9hOVmDXkflWKOtg8OHF
 7GJbGlUkYUJRquA4qmNIn9RRihTLK7ewMN0uks1/NfaUOMkP8ImwoRSpgJwVM//KbzPI
 FPXrJmnGHkneGIW7G4RoUm/7c6XtgfCj55eaquMl8GBIC5GNT/dCDS6FegIGc8OFG4DO
 MitE5tFmxJKvFywN5f3+aPX6YwXC80L9VxHQ1mEEbmKf7UlLyfkaD+im8vA5Jh1SRhsl
 A9jPxHdzcDJbUv99ZNCgDJiZxnnF+YPMPXT/z9wRGBIuvaBPau2eAR/DpJlJl7bZpqTp
 octw==
X-Gm-Message-State: AGi0PuZpJj0VJML+sMTCSIawS4hdd8c3BnUmCRsIO+F2ZoyT4S4pzkNi
 q5V0LoiWJgwXGWtIJ6JngTU=
X-Google-Smtp-Source: APiQypLieyjDVIU1DliC9hlxUItO0WxWN6xzOWM9r1RrmRvEWm8s5aKxjz20SEeoI6tKWLcHOXXFXA==
X-Received: by 2002:a2e:7c1a:: with SMTP id x26mr2550772ljc.209.1586517008261; 
 Fri, 10 Apr 2020 04:10:08 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id t19sm653117lfl.53.2020.04.10.04.10.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Apr 2020 04:10:07 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 03ABA4dP020045; Fri, 10 Apr 2020 14:10:05 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 03ABA3iL020044;
 Fri, 10 Apr 2020 14:10:03 +0300
Date: Fri, 10 Apr 2020 14:10:03 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: "guilin.wang" <guilin.wang@gl-inet.com>
Message-ID: <20200410111002.GC23797@home.paul.comp>
References: <1586512009-613-1-git-send-email-guilin.wang@gl-inet.com>
 <CAFBinCCQQW7_E79CAYZnJSSEYtDbZjeUB34UZzsSo8HF9nE6Hw@mail.gmail.com>
 <tencent_180A37163F380F9E4F3D22A9@qq.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <tencent_180A37163F380F9E4F3D22A9@qq.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_041011_382997_13DFE069 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fercerpav[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Apr 10, 2020 at 06:55:59PM +0800, guilin.wang wrote:
> but found that the dog could not be fed successfully.

Why exactly?

> Our external microcontroller feeds the dog. The cpu just gives the
> microcontroller a trigger signal, but I tested that the
> microcontroller cannot detect the level change using this method

How is it able to detect the level change using another method then,
what exactly makes them different?

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
