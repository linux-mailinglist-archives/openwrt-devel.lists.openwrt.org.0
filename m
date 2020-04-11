Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 019D61A5383
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 21:22:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXEQjAd0qkb8FYOR/uALH8YkziZFIeLhTIJZgfmM08o=; b=DPhUBVWe14js+G
	4wVyqZNWDOFwSqXB2viVtdRmjiQFhzf5+Ur6P00CC0kkIHfpAfatYBm1MdZTwuY1G0Qx9DIGEiYDn
	lxhp0+7xts2HBR2PwKnQBHjYGGNwUdiQpWyZyJks57YM431O7soeUeYJLDxzjF/DVB2tStq57FQB2
	2TWaZS01X9MEJtLwwE6qNNZ36RpDBnVaXrXj0uCGoWmWLHsE/+lBpYJ766uILZrvBLBTNLzTunamM
	H4RoYLtiKfRkaX2WmU3n0R6V4GYRRPY1vBDntVBbMqKLHx8x+YIAFuxxNZq9F9Bdjq0+2uPwMGryW
	91nMiMSbWPNG7TuF/xwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNLhS-0008Ib-6A; Sat, 11 Apr 2020 19:21:54 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNLhM-0008Hu-MZ
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 19:21:50 +0000
Received: by mail-qt1-x833.google.com with SMTP id 71so4089061qtc.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 11 Apr 2020 12:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y6yzaST3jz+2B5qBGNeRmjSEwnBIHQ8/hMbDtm4QkWA=;
 b=SwkVkXixo0V+2R5rZlZqysqar12mCGBV0EoJZ4VoI5Ek4vNjdb6gPZpRrbb/k9oQ/F
 tfEMhjIBwgq5K52kUpAMrYiRRlyYpaD46V9Rlr8jGp1ocrF3WbDlw3TA/FTQFKCNit3L
 lI6egmfgUPHTWT2+YBcDnFFZNNaH6B51Ehq3rfu1w1mzeFq6rdzjV5Cr9ufY+IdkXpyd
 natSdZNXGR7s8NcaRnHOvgIt/XSOQuj7qSBhexCCvFugJW3uOImTxP0KCNO02t6MRS9G
 y1ABlMg1EhUPTCA+dB+XZm/TFJT6YpVhH0GkttQVfZKxLlLPUwbn2Fv72MKa0K5JXV20
 TXKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y6yzaST3jz+2B5qBGNeRmjSEwnBIHQ8/hMbDtm4QkWA=;
 b=LkSip5h5P8xAfGIXmciyMcwta9aGJSOZ3ojjDIPxnPYaJtHqCmfSI9VgnTAtfMAgbd
 hlLajXUsveDwku7DibzQfI+44No9UQDnm3pEHpeGy32jtWfo+iEU+klOPtMJx+NBU9eE
 g+4Vm+Fv2MddJwIM+gg0AOYlt/RqwLtPtH7WYkY47/eSmdjmaL9ewh0VDADFyYpPDL1W
 1jWz6I+PZTg3hWFS52mWsSFgxxovR2XKkLDljPN4DjzetoG7yYWefnst4VjHO3eEpTNy
 N/mqW3z+Pe2gA2NhEd8Xksc0b+ekfeQHQH0hBqtOKcSwkTaFFqFwHrXYNa2wNS+5iaFE
 CF3w==
X-Gm-Message-State: AGi0PuZ0BXSUj5apliTOKxC4ZjHFASqDKtaGAgtJLxgHSFf3ndzAIHuf
 1pzdI4VN7VTWVd6s3k9G2JID1vybjXjHKva68q0=
X-Google-Smtp-Source: APiQypLUOJOdE9DlzpPa9mH1OKibjLJt6JIRrviqYJ9S2PzlEdLlAv7jOpwbei4exgiaL2Xl31HyMotul1sx1IGk+eM=
X-Received: by 2002:ac8:4e56:: with SMTP id e22mr4837324qtw.185.1586632907184; 
 Sat, 11 Apr 2020 12:21:47 -0700 (PDT)
MIME-Version: 1.0
References: <a39e388f-a421-3b22-f271-418473b71bf3@iki.fi>
 <c55e3594-f662-a75d-a0a9-f74d24375850@iki.fi>
In-Reply-To: <c55e3594-f662-a75d-a0a9-f74d24375850@iki.fi>
From: Eneas Queiroz <cotequeiroz@gmail.com>
Date: Sat, 11 Apr 2020 16:21:34 -0300
Message-ID: <CAPxccB23PDOun_B=3EvSWcWPRjr3fjgJ2ekBjiVcCx-LvuC51Q@mail.gmail.com>
To: Hannu Nyman <hannu.nyman@iki.fi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_122148_767285_C428379F 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:833 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Phase2 packages buildbot has failed since the
 kconfig changes
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

It would be easier if I could reproduce the bug locally.

I would like to take a look at the failed 'Config-build.in' (haven't
seen this file ever), and 'tmp/.config-package.in'.

Meanwhile, I will try my luck with the SDK, which I don't do very often myself.

Do the phase1 bots have the feeds enabled?  Perhaps something in the
packages feed generates the unmet direct dependency.   I recall python
bluetooth module picking up kmod-bluetooth without checking one of its
dependencies (USB_SUPPORT, perhaps).  Anyway, I hope I can find out
something by looking at the config.in sources.

On Sat, Apr 11, 2020 at 1:17 PM Hannu Nyman <hannu.nyman@iki.fi> wrote:
>
> Hannu Nyman kirjoitti 11.4.2020 klo 17.07:
> >
> > But most errors seem to be related to recursive errors inside the rather
> > complex mac80211 wifi driver collection. I have a hunch that for buildbot
> > the "treat recursive dependencies as warnings instead of errors" option
> > (from 3204430e3 ) should be activated in the config binary, or
> > alternatively some major work for re-organising the mac80211 submodule
> > dependencies needs to be done.
> >
>
> One interesting aspect:
>
> The kmod related errors surface in the phase2 buildbot that uses SDK to
> compile non-kernel packages. The kernel and related packages are built by the
> phase1 images buildbot that also builds the SDK, so this phase2 packages
> buildbot should not even touch the kmods. But still the recursive config
> error realted to them apparently break the buildbot run.
>
> That makes me wonder if the current settings have wider impact on SDK usage.
> Possibly the SDK reacts badly to the current config logic. (Personally I only
> compile with the full toolchain, so I have no experience with the SDK.)
>
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
