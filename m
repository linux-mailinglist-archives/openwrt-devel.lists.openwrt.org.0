Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C5D192E3E
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 17:32:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d3O82ZBp5yPeRTgrsClhNv5LFhSdfH3o+Q82BydmzJ0=; b=hjPkfJNvz7ML8a
	yxlnN9E4bDbjz/pnASjmw9Iuj0gIIQvXxN+6OwnF2+UUDgLWIKwSt29FDqRFkuen3Nl7EajB4wlLt
	wJj2DSB+k+vxrz+rbvDn+JGJxlSn+r90Ol/m9tgHtL1he/DzqO1W8IcX3qLFhJKb7prGFUja97Cga
	GDg8H+IB1JoGV9c2ztGmzlp5dMN+hhQLi77CpeG8KicOU4zpm4tDXpaUeh37krgXfUuH1eWJC4yAo
	AEK4DECZ+b7cFtcDjluoi/hyPZAhA4JAOVMCxFu5E9IJKLXBHVOcI7eSxEsmZf0NAcowFfiq1QsVv
	6mM5d7J1eXdm6xw+SXyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH8wj-00009s-2m; Wed, 25 Mar 2020 16:32:01 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH8wc-00009Y-E4
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 16:31:55 +0000
Received: by mail-wr1-x42d.google.com with SMTP id m17so3909334wrw.11
 for <openwrt-devel@lists.openwrt.org>; Wed, 25 Mar 2020 09:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:in-reply-to:message-id:references:mime-version;
 bh=cSzsi4ieELmM6gk9eLhSbTcENoKb/snqVD5b/0gLJTc=;
 b=UyTLHrOBcpEJ7fBf2R72Ic7HayMyAArPmjaqDAQZTJiY/niRJXLpmaGe4Y3DzSQ+3J
 H1AnqFajlfr5kXEJSC1jAB1O8W3YIEEycIOgEU7baPNJa3aGlOxCRCfSeiLyGc2qY4Mr
 O12fzy1Ghv8+76efLpf8GA0rmwIov0yLuvlPBFoVIiWdp+5ubqhYupCBu7t9fqmUPcUs
 ibXfLIOkUvCLRID/TXLE3NTpniED3UYUKV+FMmPzanDOAYzaI4xVkUDSTi56GOoiuJ9a
 imY0CdY0t+Fv/EobcaWH4HRGeE9+gG08LEFljPyYdnuv0s+eehknjuS07Av4JkBYlKuH
 EPFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:in-reply-to:message-id
 :references:mime-version;
 bh=cSzsi4ieELmM6gk9eLhSbTcENoKb/snqVD5b/0gLJTc=;
 b=jeSul/S2My7M6Q2BKiMyhJiR18wI0v5G06yXh6Y5dITQXRHEkh+AMJP1ksmzOiAHo7
 IT7XwRQjsEpwPI04jOHoHMxWM1HUqI4zMz24hnvhiJYWIWG15jAMLR/wIO7vYgshBqgc
 jw+6myShyoQDnaWrSrxfBKfRMbZwbjZVMc9uUq334gFyv3n9IiHaX9Doi+R/WhJifmcQ
 +D+JMJaaADayGjJqeChVsD1VGbSjsTn8vWigTUmO5VnSSaIa83sT1DeaskSUmB5CzhZy
 TV9A5p5TAeyd1q2luQLYVIouXzN92BXZL7sDuqqDZX9edNE+DqegLxoDIZ82M8hl15TS
 iIwg==
X-Gm-Message-State: ANhLgQ14P1m+cmckDVd4exTq9MS0XLk8D8f+jC5mpMKpVOLN0Zolqg1o
 raya3jAy5W6Fov6fWaYNpRI7FHKB
X-Google-Smtp-Source: ADFU+vucUYMVToTXAE78Ks1us1S5+ZKYr13cB/F9X3r3id/w4ETynmVIlgSfOC9q69zxDIiE2yof5g==
X-Received: by 2002:adf:efc9:: with SMTP id i9mr4090188wrp.23.1585153912217;
 Wed, 25 Mar 2020 09:31:52 -0700 (PDT)
Received: from mStation (host48-12-dynamic.60-82-r.retail.telecomitalia.it.
 [82.60.12.48])
 by smtp.gmail.com with ESMTPSA id 195sm9729539wmb.8.2020.03.25.09.31.50
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Mar 2020 09:31:51 -0700 (PDT)
Date: Wed, 25 Mar 2020 17:31:49 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: openwrt-devel@lists.openwrt.org
In-Reply-To: <alpine.LNX.2.21.99999.353.2003251541290.17826@mStation.localdomain>
Message-ID: <alpine.LNX.2.21.99999.353.2003251728410.17980@mStation.localdomain>
References: <alpine.LNX.2.21.99999.353.2003251541290.17826@mStation.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_093154_494928_07AE8F5B 
X-CRM114-Status: UNSURE (   4.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] WL-33n3G not booting
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello guys!
As a bonus, I found out the device runs fine in openwrt 19.07.2 (Linux version 4.14.171 (builder@buildhost) (gcc version 7.5.0 (OpenWrt GCC 7.5.0 r10947-65030d81f3)) #0 Thu Feb 27 21:05:12 2020).

Any hints on where I may look are greatly apreciated!!

Enrico

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
