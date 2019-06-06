Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 984B036B2F
	for <lists+openwrt-devel@lfdr.de>; Thu,  6 Jun 2019 06:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mai6W3tXytn5V6oFkufPRtJMRTsglg6XLyppwncNLPU=; b=XkAA6gpghlsPgc
	XJUpYFFYyRuygsBeiOKO3qWMo/D3fGDsJ1ZfHkckcj2y4yCwyQq3RqXhxcNiGbq+78Sd3vgeTbcrI
	Qy8THlKt6O23H0nlw15xorNuziD3jelAgHhw8HLkfxVu3r+OY08Fu2ISGcdjGq9AXVxyI6gRsYtpQ
	I8W3FIXCXW8a1DjxVGQ/8nly9nXDVSfpMWRvtN0MBC4BFXv9xp7gob1fiMdj5TzmMuI3yZ5ctFqfq
	otMrco8WYpNBX1sNcdJBiMSO1P4IB1e36QU0jfYYv8WF2lyNFGnhW7KAuX7AccERDDRUEiMBzX5Mg
	S3QnBuhLAsWcfQfpbWSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYkOU-0000Iu-P4; Thu, 06 Jun 2019 04:52:54 +0000
Received: from mail-it1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYkOO-0000AU-9S
 for openwrt-devel@lists.openwrt.org; Thu, 06 Jun 2019 04:52:49 +0000
Received: by mail-it1-x143.google.com with SMTP id m3so1189557itl.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 05 Jun 2019 21:52:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TZXuCpQQ0fiOjG+55Brn/D2H62LJantOjrhhDmzX5SY=;
 b=pAOKoFTtHCcL+uh3UTWJteQ9LnCHtTlQbdUM33lqMOhGFI6SmIgGp83ekoC7cMvUYo
 MxG1DTT27W+KmcMZY91TxYq1jcfUD+uytteTCfSFcYdp1t0wNHgUiCzWaYYRBZrzHlTI
 IScmXtjKWtnll9EIrPMMam842Ccg+uaKKuDf+TtuqcIQdeCqKujBI3rs9bkiJyu7K61W
 wQqHTe+0kn9v/Wwu+NNZEMwRrxZFx+B1llgpBGRRaeqRcm6A6rgVc5f0zlnXbKyCLfrz
 GiWNLu/wZiC8ECpDOwnWl9t0+V2WQCXC607A7hANrwNBZVraf94bSvuPPtKCZ5Alv8O3
 2M+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TZXuCpQQ0fiOjG+55Brn/D2H62LJantOjrhhDmzX5SY=;
 b=nHLbBCLnSq6JMc86RTcI5xQTjXfXwOree+xsTGTJyEH3L/2Zp7NorqxJ7A6pjJc7p4
 GgvDe5RGdppyplDRsm3wF6cS9vH72YVc5rI1128ATKOJyWieIrxr2cZjdO91J4S6vtkY
 GkgCvy7qbKRb1Emy//1TWwMrW5yhZRtr4+WoMUt2oZiABbdjyTXnarU0Dsq1T42nzd+o
 nVQzZh0j4Ff6MVTvyCg90mT2cUqPjjiutKfe5KCtDOfXQ2WIsIxZcojk5FKpm76gSCok
 Z02wiaY/bJSQJoE/A3fmvMSAVIcoKAQJ8XCUVotS7CKHmDSDQdwIXqeYu1qhLR4Y3R5Y
 cfuw==
X-Gm-Message-State: APjAAAUlCSV1N8frdwAdf5WuzE5MXg75AWu7ds5tLzy/RJ4+vuAEXVXD
 EMJf1f6uv52gc1sRbac5UO35CCC/Z2Fg8WBDhC8=
X-Google-Smtp-Source: APXvYqzqISD6C6wR+tGajRy1bf0dX4K5xr4zGFfifoEGm0xkok30yaYgZqRqNdiw9gJJuDLHb5R6BdojLco9Bfej+1I=
X-Received: by 2002:a24:504b:: with SMTP id m72mr15112826itb.63.1559796766453; 
 Wed, 05 Jun 2019 21:52:46 -0700 (PDT)
MIME-Version: 1.0
References: <1559653541-26682-1-git-send-email-ynezz@true.cz>
 <CAAd0S9CEPJqQXJ6OhW9_597ig92Typb7s0L5HwpLm-CU=ska6g@mail.gmail.com>
In-Reply-To: <CAAd0S9CEPJqQXJ6OhW9_597ig92Typb7s0L5HwpLm-CU=ska6g@mail.gmail.com>
From: Kristian Evensen <kristian.evensen@gmail.com>
Date: Thu, 6 Jun 2019 06:52:35 +0200
Message-ID: <CAKfDRXj1c32aAw5WVqkC9ULD8Xw8UoSjwamo=R3vanMvhOcPEg@mail.gmail.com>
To: Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_215248_382103_4AA36838 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (kristian.evensen[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] gpio-button-hotplug: gpio-keys: fix
 always missing first event
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Christian,

On Wed, Jun 5, 2019 at 10:23 PM Christian Lamparter <chunkeey@gmail.com> wrote:
> @Kristian Evensen, can you please check if the following patch would also
> resolve the issues you have been experiencing?
>
> I had to attach the patch as a file since gmail's webmail interface now seems to
> eat all the tabs. I hope this still gets through.

Patch arrived safe and sound, and I just finished my tests on the
ZBT-WD323 (AR9344). I started out by building a fresh image from
master (head of my tree is commit 66d1c29655a4), and with this image I
saw the earlier reported behavior (a press of the button triggers
factory reset). I then applied your patch on top of my tree and the
button now works as expected. A short press triggers reboot, and
holding the button for ~5 seconds triggers a factory reset.

BR,
Kristian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
