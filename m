Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6DD2B2AE1
	for <lists+openwrt-devel@lfdr.de>; Sat, 14 Sep 2019 11:55:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxAkluht4QfQwA4suxkaRZKpWX583mrOiBQZNoYtgV0=; b=CDGrOMoEKxPhdr
	GyZCS9989tEjynm2ThXVqgdaA3/sTT5yw00O/cGVtiIbGM28X8LS0624oqNkG6lLRUKGB1epGY9YF
	rpjLX7Oii3raK3DNQPa1EtA9p54yorEinsv497Dhka5uP0oo5GTqyFYWRqRw7GWgbQULofv1jChuP
	xFAnvGchxfWa86cBckE/n5ZAYG3AHm9DIy3lGZK2s5BLq79rBzusCkrnv+x4msbK8yeEpdHff+bME
	0IYfxtsQunHCmaDLo005AsC1nlf/DuYJ6vUGGGINEI8At6dV1vMQRT94mNJMSKsOANTrId8hQ61gI
	LtWGj+U6biAK8jXGwi/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i94m0-0007XZ-Hb; Sat, 14 Sep 2019 09:55:20 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i94ln-0007Mw-I7
 for openwrt-devel@lists.openwrt.org; Sat, 14 Sep 2019 09:55:08 +0000
Received: by mail-wr1-x442.google.com with SMTP id r5so313906wrm.12
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Sep 2019 02:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=HvxjdmJJ7nUU/HkoM8YQRJ1Ao2UMSAiFCx+zAxgFzLI=;
 b=sTjMjZybu2a6uEk3HbBLaWAOujk0Yvqnua7xEqlmO+KGMyhKmKufmfEkrdh9179eam
 ekh7TAn9EYCbI8u6IWhb4sUww0dqCLD23jWntfvZKPGELqjIkl6hAzoTqRaRNH21NzLt
 onFda2/iNFE4vQ0GjdzfpdCpRpEiyB806eY6dMwjUkO0mO9gQ3scpWyWf1TemdsjRwNu
 7r7RTee+jxMnipmbQ3y2S0Qe0viZjxrxfQDrYLSKRSdjrnQfsCPc3mfplS0pjOcsN9YV
 G5QRRA8BnQPJ3ohxHUy6NYlNQiZyfrV8AqMULVHnUzgU8it9hYe9mc5M5TZo8SsgA94V
 RbWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=HvxjdmJJ7nUU/HkoM8YQRJ1Ao2UMSAiFCx+zAxgFzLI=;
 b=uBNJ4oWbkHxmx+MMk2ZLqNGNu7kt8Z6OTufu43yjT4tkx1c2baKapRXbaerkChBKK8
 z+qS7nKV/Ee++EghB6nUNRxJNaEBSX8y8NLYi/WL8vF6upZNtIxmcGi0vCfbOTlxv63b
 FsXBTXeq4cR+tq+nRzJpJxuQHn2nquJS1W7QEeclFfujoOSiDhRQKvVyHM+UqiPztqO4
 v+l5pkMVaxganRLHavhWh4OSZIsCg8RwWX4Pqgp1o0161qOaRok6Gsy1+hY0rLR/zUfg
 D5OH6+kIiMSc/eaUIku1l2lcxS7jHdqtba+3a4lS9cq/85XZ9G/IMNbDJHYhhrOwGBb2
 sjhA==
X-Gm-Message-State: APjAAAWta7UCoZNFnWknmXgi91575YooL5qRTlP9auHe6sm5s5iXg2gK
 RO3JujoazzJWQFVaH2vmHxlMKzA3ttSf6oFM93X1Wg==
X-Google-Smtp-Source: APXvYqzXthVWtMnZ8E+R2DiW2k01mJL6xrWK9HMtE7zjI2PqRPBB3Ghdt+qzx4/n1IUv/DfejpoOTfDH0QEqFa2SOts=
X-Received: by 2002:adf:dbce:: with SMTP id e14mr13821703wrj.56.1568454906427; 
 Sat, 14 Sep 2019 02:55:06 -0700 (PDT)
MIME-Version: 1.0
References: <2306678.c9ocJjGFzm@tool>
In-Reply-To: <2306678.c9ocJjGFzm@tool>
From: Jonas Gorski <jonas.gorski@gmail.com>
Date: Sat, 14 Sep 2019 11:55:06 +0200
Message-ID: <CAOiHx=m98-4uncufWudBifWXJqXQ_fiSwcnK_dHq6VrG3M0AWA@mail.gmail.com>
To: Daniel Gonzalez Cabanelas <dgcbueu@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_025507_666228_F8A0CBDA 
X-CRM114-Status: UNSURE (   6.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jonas.gorski[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH v2] brcm63xx: R5010UNv2: fix flash
 partitions for 16MB flash
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

On Wed, 21 Aug 2019 at 20:57, Daniel Gonzalez Cabanelas
<dgcbueu@gmail.com> wrote:
>
> The router Nucom R5010UN v2 has the partitions defined for a 8MB flash, but the
> flash chip is 16MB size. Fix it
>
> Fixes: 474cde61234c ("brcm63xx: probe SPI flash through DT")
> ---

You are missing a SOB.

Regards
Jonas

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
