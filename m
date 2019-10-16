Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF57BD994B
	for <lists+openwrt-devel@lfdr.de>; Wed, 16 Oct 2019 20:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0K0OA5FF69gghtqRuQInENx5TgWoa7OTbCjB3eS9g0=; b=ndYfM0yqOAcShl
	5jVEkTIYn1PJczcWTBkYIaQOK7yqGh9SWPa2uIu2uNzuZX+gyg/Ke07vSvOx0MyksUdHAFBZjahQp
	/z7RZpQUomSMwMhfw3ZX3ckKkDuOQeukZccCSthnRU+vEcNxj0QBpbHDQMNKsXybuDUpRn9J1nWw/
	5eaDyrPmgtNmcr6qBWWoZwvrQJwPhNjhLfqLqC1s7t3Bs3LPdxvj1WVPLyXLUVT6+E7JOo3QXdkrX
	AGsw+NNZjNWLnD5VbrmHQDfZW1xSRzwv5J4Qh2c4M3wsDbB59kRe2SN5rbmgo1udojIGlaE9vom3q
	u2QR+C2Wmg3GqTqI3+Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKoA9-0003mn-O2; Wed, 16 Oct 2019 18:36:45 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKoA2-0003mC-3t
 for openwrt-devel@lists.openwrt.org; Wed, 16 Oct 2019 18:36:39 +0000
Received: by mail-ot1-x342.google.com with SMTP id z6so21067656otb.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 16 Oct 2019 11:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0EkkAo9oNFk0JxApIDgYH1htVIDFrLEO9eZOHZZkuWc=;
 b=NImxnedQD3xPV/HhanyLmLgQqz31odivG3gPmH+CfVamQiaMkSLT3++tgd7NDP5Kl8
 TM5Ej/DY1p+saOe+GyUJnZ9UViZWiAvhSzNcN4sTmgrIEBVjnxjXxZ3evzBQ8COrdDgo
 CCKc+LOFjcp4yBgxVzxwGgAVnBObHAyEHrk/9d20LChwDeEIruVrLu86in1nlbIrLYYA
 VtHo4mJXB/lyyocs8lbEwyg+OqAXMLFiahZATaH3c/KN5EbRkpXepenBUPL6f8UTLcVs
 Dr0IyEdb7DsiF1wSwuAZqyjhUdoBUTbIBhCzfs4e6P9ujVsZLJh2yttkU18DgNhP0XJi
 79Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0EkkAo9oNFk0JxApIDgYH1htVIDFrLEO9eZOHZZkuWc=;
 b=rq1PRea/P0+BW1eH1z3CkD6xduVWgvd2St4X8Q8vspMrR6TEWOu9S69huINIvoEtCz
 OAFyFBZjXG7xUlUQuNWP5uaF5l7Weo3sReVSR3cBi7NsZxN5YSPLcbgBKCmI9H1ge29F
 QxeO/rbDe7jxbylTykeLCXbtPR98JXgQ3pETQCVlr2sY4V+Xy2oDIjCEUlq/yrF6Prev
 95aI5PaT6hu4nsbg0lAliBv3XP4dAr7BdzuwPZmTokOLDl1BVCq1nTZRa6acjQ9700rt
 NlttBbSqRtKjDRMLj/X7V5I5any7Es4VyKnIh2TvFqBy05/if2Mx6s3DF69nyh7zSZHM
 fBrQ==
X-Gm-Message-State: APjAAAXjp6mEZxCbA30YA/Nl6cNEN7f58bySGfWq7qGUpiIMJGaa3I8p
 J6mNKdR49D0VU/F5epajI3qeURUHt+kYJQ5sDLad0g==
X-Google-Smtp-Source: APXvYqyIdGG2sTnsnJTJGNuL43f5rC9wgiriDrXQ403+lPW13mtjNBtoNSroHq7nmV9bJxVd0t6CO/LV4PC8tyNCJkA=
X-Received: by 2002:a9d:6284:: with SMTP id x4mr4293414otk.281.1571250993292; 
 Wed, 16 Oct 2019 11:36:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191008010225.8822-1-rosenp@gmail.com>
 <944A6623-FEF1-4AC9-9A1E-B7D3566CF8A9@oranjevos.nl>
 <080086a1-b4dc-1ef3-2bc5-cafea5640421@gmail.com>
 <49128945-A6B3-49E0-BCD0-79A3018BE488@oranjevos.nl>
In-Reply-To: <49128945-A6B3-49E0-BCD0-79A3018BE488@oranjevos.nl>
From: Rosen Penev <rosenp@gmail.com>
Date: Wed, 16 Oct 2019 11:36:22 -0700
Message-ID: <CAKxU2N_KTr6J61B2OesraKJiZZopnuYpbrV799_CebinnTaiAQ@mail.gmail.com>
To: Paul Oranje <por@oranjevos.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_113638_361600_1B66651D 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH 1/8] ncurses: add cygwin compatibility
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

On Tue, Oct 15, 2019 at 1:12 AM Paul Oranje <por@oranjevos.nl> wrote:
>
>
>
> > Op 8 okt. 2019, om 14:57 heeft Alberto Bursi <bobafetthotmail@gmail.com> het volgende geschreven:
> > ...
> > Yeah it seems these patches are for using the build system with cygwin. I think there should be more explanation on why you want that.
>
> Dear Rosen, could you please answer to what purpose you summitted this set of patches ?
I have a branch with these patches. Thought it would be good to upstream.

They're not really invasive. Some, like the dosfstools are also
consistency updates.
> Regards,
> Paul

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
