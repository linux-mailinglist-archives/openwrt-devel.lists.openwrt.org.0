Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC4217C05E
	for <lists+openwrt-devel@lfdr.de>; Fri,  6 Mar 2020 15:36:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=FObHl+qfCiBiJorc7FQaEpwEJlj/jpp1OOR+FLz0AWo=; b=M3i
	haKKpYOlcvPvSnvgTFhxwYcA+w+db9auCG6YX2QZlTJ0KrGFF/lM7oalYuMRu0z/nYycgEB4yafMF
	ptw+kdCdDFbESlmd0QiiIh30eXZJu1xNkvDfACpr1ta3Ww3EvO3nv3BHSSGl0r5fQX9RkOXkjnJa6
	pTqtYKz645I6OzmC9UuFkJCSmbM61f8I3Gdw8atKdzdsiQfiKG1w/4uLXysN/rAkAZqUtBqidwvpV
	kCQ4TClyBVyL0oS8JvMOs0Ob5QOj+refwIb0ATE8zJFM6Soayi/PLy3U33u/kTrlv0XrJSDu6gLzE
	JVT4+F0lw8LvpT/8YkikZ/xojrX619w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAE5j-0001f2-5D; Fri, 06 Mar 2020 14:36:43 +0000
Received: from mail-io1-xd2e.google.com ([2607:f8b0:4864:20::d2e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAE5G-0001SL-4m
 for openwrt-devel@lists.openwrt.org; Fri, 06 Mar 2020 14:36:15 +0000
Received: by mail-io1-xd2e.google.com with SMTP id f3so2238924ioc.13
 for <openwrt-devel@lists.openwrt.org>; Fri, 06 Mar 2020 06:36:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=g/GPY/3Ejs0VuZ+NSyzQz5bVlULQ8X6d/rKjUXE6sxM=;
 b=jylXAJPpurCIxXdguclWY9GJP4BUrvjo3j1iDzWqoR9rZbY6qpIjZEwU1E0XpVwb48
 by8meSxvlNAueY8lO/eiau2bvL3IuyH2F1ymW2aObWoo6ulOBs7WQQ2fzSRcV6eyFfGS
 bsCZahXFe5Lwd3012EuZfLWw9+/kWwyBtJJv0ObvU6sFEjFV1MEIgxQ7DEQE3ubjQPSf
 RCV25hd8b1jgsNZoujzQoXlMpi3+UCsuzaOmDqxsbfQ1PUeSUSl8UvZWiLCD5RzvPC7Y
 m6ZRfCGZcDSyZe9p+0C9cdeuMwGEdBWuCp175kaTD1YQCzPsYsDFyysoQGqzGSuiGTN+
 e/Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=g/GPY/3Ejs0VuZ+NSyzQz5bVlULQ8X6d/rKjUXE6sxM=;
 b=e7ykLfGdoNQh0Ok1lrmyCvi5xCqcM/lchY+PIi5f8OSBGZUe9sgwOzsWYG9Pzx1bY7
 +/aDZqCxNU0bhu4MSh2oR4XyIDTvvY9I9ClIeBYO68faXgCiOSva52lFqK0tex8nxOzM
 uuzkvwnvkQS7KuUQNtzxjef+GTGi1Lv1W32TLiBgHZ0VjrUKe1xQDmGWUCdx0+4YlNbt
 qCF+UV1VV4Pxav06sSU6PWiQwU9mo8J2H8HDAiWEpwKKvmk6MFtpRY9Q9z/jX+B0aCZO
 FjVNsr4G/Cu9N7yv1BSIAfN8u6bgg3Ktb+4RRlK+gbyDb/otJOfGPucUjc2dbCl+hUWZ
 hSxA==
X-Gm-Message-State: ANhLgQ1jMf1ixPMmaLORKS8PMAEro6WIK6vIKiIrZzQ378T+UNczNG8M
 5PBUHAHMbZFYomavefdFTf33SUPxVlU0Uhp7KigP6A0Nw1E=
X-Google-Smtp-Source: ADFU+vsieolUPg1ap/Mi13O7sKSUbmOVfSh3qZV96tS63tjktALKdjQrTHG0kxnmmIxNyYy4kukGjyp00K72WLtqBI0=
X-Received: by 2002:a5e:aa0a:: with SMTP id s10mr3237591ioe.14.1583505372483; 
 Fri, 06 Mar 2020 06:36:12 -0800 (PST)
MIME-Version: 1.0
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Fri, 6 Mar 2020 09:36:00 -0500
Message-ID: <CAOdf3gp+g5n+ynfTcNAUWaAgQ4a-qze6jGTGs-tXZCRJZzUjWQ@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_063614_222027_04697086 
X-CRM114-Status: UNSURE (   3.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [champetier.etienne[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] 454 TLS currently unavailable on openwrt.org email
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

Just a heads up, I tried to send an email to @openwrt.org (not
lists.openwrt.org) and gmail fails to deliver it, error message is:
454 TLS currently unavailable

Regards
Etienne

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
