Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE996985F
	for <lists+openwrt-devel@lfdr.de>; Mon, 15 Jul 2019 17:28:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8eXlyM9Eqa7CUNLwqYqsYunr5NAn27CPPXshKfxHdjk=; b=hzWrjPZb2lMRPv
	Mxx4YrX0T8TjGHRD1Hl+adnKAKVh2XtqnahkHQBd55+GWbFRhTTrHjjNH4OkjY04wiGVXWnNsfhXn
	6HcBjjczCwRNBJbYxblqYAHmj5Wy2fBUGH/Don6TzuQfbBkBJUCczoy6UVmr9kPjlvfrOBzBq35Oh
	ZggBNZF1CLY9ShG36t/ZMp0Y0xBRszOdTOxZKElM2il0LBsFVoXIoVFXok/8IwLKkKlvnxXvaQZl4
	5NFjCjls/Bc712zqkQBS78JHGET9SAcf2Sy1/H4F5oNuy2oL+XJdR+6KUpm9xDIewfl1hiyO/fx0Y
	ffUJJcxTDkhORlhaVd1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn2tc-0003rl-5w; Mon, 15 Jul 2019 15:28:08 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn2tT-0003r9-7r
 for openwrt-devel@lists.openwrt.org; Mon, 15 Jul 2019 15:28:00 +0000
Received: by mail-oi1-x242.google.com with SMTP id s184so12939681oie.9
 for <openwrt-devel@lists.openwrt.org>; Mon, 15 Jul 2019 08:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VYtiK4ETTFg/AWLVy118YXG3Fs8rEHzBCj3bgl/khkI=;
 b=sSl/gjzSZN9CzZvw8ahdXhSgF4xEyHVOuoXMBj9WlXox1N+iM2Pg1sf+GZWEbhIulp
 VY+s+W/CgwFIsddcJVjozjwpKetbeX3HK0q+R1F++QikM3BY86alc3Q/pjuVFriWgagh
 GlN02aGiiDlap3ApCbNpwqYvYWwh91SwKSENC2car4JD8aX6dcAFpvN9QrlAroEXd1Ut
 wGIr5Dmz37LQYS5O1oQuWkUP+9MYCMQGXc7VXgA3Z4HKFioQN4Y87X6KViREhXH/Gz+/
 U7ER5lAMjhaNodT3tYzBuhX2HBFHrvEBS6eG/ESD7I3nKCvJY4TQbItcHUZKXtUU8qN2
 93oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VYtiK4ETTFg/AWLVy118YXG3Fs8rEHzBCj3bgl/khkI=;
 b=cBOnDgEZeqN4LPoBb8La7tTQh+XoeInpBRkvwsD+xdZ97Njqr5SbKSMYuYPzfVNQyj
 Gw9yIyavbuNsKPIGJmcb3YA6szrjtqQLDU+TSNE5WuZrUZT9Gcz/KyTRmsIkVba5BJ/l
 Rl3eh5zE80mOF/+ZbDSwZFN2lrsPMkinTXNJwgn7YoaLJh0VcWAdf12PK2yJ5tx+gyCr
 Dz30bQXuF1UU6fFE9wB/RE/n0JkvX8i59MtHsq0VA7sYRds+YzSm+j9JTwRmKUO84RiP
 r86rCMAOYDxyVgb1Q3HLCoLBjbiP5Fdum+rE9ZBtL1xlVmNTp0S6diHsUWNEG79HiXoF
 urxQ==
X-Gm-Message-State: APjAAAWyoySTN90WAYSPJQMdo0xRdf/lGK8QY//ZhjhDYr4o6Ggv49KG
 9qFDnyIDhIeej5Pxo1Ua79LiRVVkuPxilHjwTGQ=
X-Google-Smtp-Source: APXvYqxu+kNIpOxsMtXcp+537zyJIhGGVPTqwlwm0pN9uzwKKPFoEQISb80HYRAUZCU8BeLUf7fxONV5BFm0x5P/CQ4=
X-Received: by 2002:aca:aa93:: with SMTP id
 t141mr13390187oie.128.1563204477129; 
 Mon, 15 Jul 2019 08:27:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190715115342.4190-1-gch981213@gmail.com>
 <017401d53b11$543bb6a0$fcb323e0$@adrianschmutzler.de>
In-Reply-To: <017401d53b11$543bb6a0$fcb323e0$@adrianschmutzler.de>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Mon, 15 Jul 2019 23:27:45 +0800
Message-ID: <CAJsYDV+2psCAwoRZ=Umjbzm4T0iGZ0V-PLhphZA0e3YrQS2uwQ@mail.gmail.com>
To: Adrian Schmutzler <mail@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_082759_308055_52B28517 
X-CRM114-Status: UNSURE (   6.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] ath79: add support for Qihoo C301
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi!

On Mon, Jul 15, 2019 at 9:29 PM Adrian Schmutzler
<mail@adrianschmutzler.de> wrote:
> can you tell which of the 4 MAC addresses is on the device label, so I can add it to my label-mac-address PR?

I guess the router I have is a weird engineering sample. None of the 6
MAC addresses stored in mtd matches the one on the label :(

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
