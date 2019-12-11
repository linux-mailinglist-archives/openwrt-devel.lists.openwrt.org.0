Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CA111B901
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 17:41:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YoQwkjU84Yg5q7YoQmZxTawSwYmHGKmQmXi3NPkYSkc=; b=nnOaDJ53J8oIie
	ni7dk+WUcz5P6hzy+9WcfOXd08ebxWjQbVugKMBgVckiyJ2hL/JUWIgLhOr8031WxF3dl58OPjBHz
	Dt5+jLOSvYFdhM8lVG1WNCXztnb3uHPzrD+5QN0+3/CHUVuD2gS4jyfaGUzVr0TEf8TDuibMbt3iW
	T/f0AqbVzfuOGnf8qnkfypi70x7VTxScfKKtJdprVaCnywb/QuOkUwFX3OCLHSV4LAGooT+ip1ZGe
	mFfal7jzjedowS3daFXyZdQ36v3K8h1k3XRg7+x7oNE5YvHoXRwuCq058MUPXGOTG6iqCxAysLl1i
	E/M/9IOu0RktJjCeXkmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if52q-0005xg-3r; Wed, 11 Dec 2019 16:41:00 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if52h-0005wp-NJ
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 16:40:53 +0000
Received: by mail-wm1-x332.google.com with SMTP id d73so4585489wmd.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 11 Dec 2019 08:40:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s0wF6vGi4eCUi6aT/hwnE0dIEGG43pThn50TdX5rUXw=;
 b=uL7pD4xhK94uqipXSH21Obbd6br5HkBTe+rVd+XlhomjYBUAeuU0gAtIA1uD/rjm9e
 0jTbhq5RhzRYZyJ8JlJCmydVEC5BnIOqt+pqDGap59BiD0geqQSFjg7ck+kM6ZhYM+wI
 TGRcRqPePka80xbFg9Z/Mav+8+he1muiGby58fIg/EXKyuAUSYkfGBlzGA17WR3Zrm7K
 zZGakC6ylErLaDJ1KEvD0ESUevqbZ0/DFvQgSBR0zMf7I6gbOxk0DNyplgYpIsyPpZbL
 LEsV7QlQU/8zRzRNQVkIPaEVOQJmUittIbojmu4TNwNiBDyBujxJLlztI90KyAbb9wTg
 h+Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s0wF6vGi4eCUi6aT/hwnE0dIEGG43pThn50TdX5rUXw=;
 b=Yk1fCYcqciAGNLEboPpONpBWb89prpbTKmifn2aLj6+OrSQgu+rVyf0rEcDYhEU7xQ
 jiGvIWNbf+UQ45O0kkODFGnQ/0Fjp0sD27sQxpsv9mPiWw5kA5CumtHZ22Kgewh7A/GU
 kJDwRKms2s0q/RMWgG8gIzS1Z84ynvsGMl54PiR7lCheex6ayiE81bL5TvgNdUF5DHu+
 GSPf3Y65D0gQkEC63oe6CbKQyKwkCDBn/lHU1ty4uYj//Xpy0C1ZYZNfIhPRjgUvuItV
 vGwv63kmUFFQGSAFFAl8ae6qcJcv1TRS12grI3DNq5keXhpADa6YEeBZgm0yStU2cb24
 RucA==
X-Gm-Message-State: APjAAAXLpG7CL+S00atZTaVlHs2kXZp+ghlwDKzKSW5GXMfapd37ExG1
 /0ozuRs0TY9i83qi+Ev55s8r8kYxKhbuUVQoviI=
X-Google-Smtp-Source: APXvYqw1+SyXHv7p4UzxcLPsPlhDaxkH24mM/ATHxysbU9KPRK0pNmn6d717IDnPDJ8xSHGVEuqZFMEoqyfih+PFPUY=
X-Received: by 2002:a05:600c:22c8:: with SMTP id
 8mr741948wmg.178.1576082449474; 
 Wed, 11 Dec 2019 08:40:49 -0800 (PST)
MIME-Version: 1.0
References: <e13712e.36225d.16ef3b3ec4c.Coremail.rqgxfc@vip.163.com>
 <CAKR_QV+a___R2qsPSf6vtpk+JUPqvt3ZdvTHQA9Y_pFOZ-R6zA@mail.gmail.com>
 <20191211142209.GC1371@makrotopia.org>
In-Reply-To: <20191211142209.GC1371@makrotopia.org>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Wed, 11 Dec 2019 17:40:43 +0100
Message-ID: <CAOiHx=n2+mC-K1xiLHrso-Co1rUxMZR6ay9LvMr091=ONs2qzQ@mail.gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_084051_813047_603206D5 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:332 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Inquery
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
 Tom Psyborg <pozega.tomislav@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Wed, 11 Dec 2019 at 15:22, Daniel Golle <daniel@makrotopia.org> wrote:
> As a community, we decided to give our self a set of minimal rules[1].
> And even though it is in the last position, rule #12 "Be nice to each
> other." is meant just as serious as all the other rules.
>
> So here, not for the first time, you are using language which has the
> only purpose to hurt other people (for which reason ever, it doesn't
> matter). This is therefore a very clear violation to the above
> mentioned rule. You statement "suck it" (guess what) is also an obvious
> and disgusting example of a masculist culture which hurts our community
> as a whole and I strongly believe we should not tolerate that.
>
> And yes this was a spam mail. And it's even needless to say that
> replying to a spam email in which ever way will always make it worse.
> But that's not the point here and I will not engage in any discussion
> on that matter.
>
> Please learn to behave or leave us alone.

+1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
