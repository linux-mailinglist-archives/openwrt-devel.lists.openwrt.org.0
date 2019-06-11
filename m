Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BFA416EA
	for <lists+openwrt-devel@lfdr.de>; Tue, 11 Jun 2019 23:32:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryAmVEG5V+713M8Mn1Ar++3aQmgfq1NofZmCA0moEHc=; b=npjZwJIE6y7dWx
	FDmGjz47g0VJrDeR75Q5pUuoR2oJsqVE82UeHMlDg2YcCc+jo4gL5gCSx+/RNZm7m0DYN/w0MGlmR
	dmhR0ISY6ZulxKzVEkbIP4Ci34inNuId2+AYD4OzMKAX5Mt7Sl7e3xNDNH8moZFiGFBJKNXnH7n+O
	xVkVpVUBbHBf9Qvpojogi9ShtItE5uyhrY0M+54vb545Gv3/j8HlGRJkPLs9wdDeEFdHp09YZJeoA
	4GyxcsX6sGJTMy8Io/CERBykf4+oN534+FthsSk/JWpWtUdk8UGUUG/qjIGyJFH/MNV8cV/zJ5CI2
	hqrAhT9wGnafl6v87FIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haoN4-0000Tc-6U; Tue, 11 Jun 2019 21:31:58 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haoMv-0000TH-Py
 for openwrt-devel@lists.openwrt.org; Tue, 11 Jun 2019 21:31:50 +0000
Received: by mail-lj1-x244.google.com with SMTP id m23so13091319lje.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 11 Jun 2019 14:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0seT/R+TWr+z933Re4pqjLfWTLuLppCZmgwcFbnMyp8=;
 b=hO6tUJqaHk/WU1JmUpSdDUczK2BaM3YB5BBrsG1zwD+m9eI845SczVbnx97Ex9Fe+r
 K0avHe/TS0bCtY0XTkfOtb9oY8cn9j4tL97T5XO2vwawm+ypR/5tlHkNCi7G2IwrQ3SW
 zzTrDvcdfehPLTgFEteo73nQjvM96SWcgqsJipBTV39CWeo1c8MNlykyLZUYZSfr31r/
 A8GOoZ8Wn6raGo+3YFMe7SL2RSPMU8Q4GBb5JF/drXtVgV5V2xbQtIyY79A1BjkVHbGH
 nfhnn5R/7IceL0VVFM//OH3ul11ofh9kouJfOH+RSg2FnM+O8utRQa2yfONCIO8hI+bz
 V9mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0seT/R+TWr+z933Re4pqjLfWTLuLppCZmgwcFbnMyp8=;
 b=rLA7s0CpZQsFp1ph5h8M+OsNHPkhw2PICDZW2ER9dmYUIG6DXJmkd8vkNjbRAij6vD
 Gy3umPK4IJc1A+JJN3kmbvkvb+MGlc1XC9OezG8640/q/aCk18bLQtp2GBJXIFWEjqnc
 yvDdBrezQQF+82fkX1wcgh/uWlYJTC+9bPqKY9fLHdnKMK0EO63ah672fmcqMvxXaQo1
 O95hRwPkgl9peMbPDSbSrXa8yL9PA59hqDGpTSjY5cG0I53xYZE5lZ1vdBQDFzU2z5Ud
 ljnsJH486a7q9ZQS85AeVs+pbDU/GYgqtvcy4Hllk08rAYfduENW7mpqnxDmsCyg5+DA
 nZfA==
X-Gm-Message-State: APjAAAV/+5rysEI/9Aj4zmKJOHhtEyu/6GSnHQfWmS+5U2upvR9+/mrr
 B2MAgs/3Pyodqr6wtU0xvOcVYh9qjK5MNV8vRSd6Eg==
X-Google-Smtp-Source: APXvYqzJxIKKTMSOnpYybnIRox3l9XF4oK2lelLrO/P6Zkv3c4oYaCqiO4MAra71XVI4jiQ8f4ymCfaKbQscGnBKTdE=
X-Received: by 2002:a2e:5dc4:: with SMTP id v65mr31513240lje.138.1560288707955; 
 Tue, 11 Jun 2019 14:31:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190611212811.32150-1-linus.walleij@linaro.org>
In-Reply-To: <20190611212811.32150-1-linus.walleij@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 11 Jun 2019 23:31:35 +0200
Message-ID: <CACRpkdamK+pesxxbd7ohZKq-UnNURhO0y=7uMFPjgmBBHNLk9Q@mail.gmail.com>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Christian Lamparter <chunkeey@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_143149_845776_84C6600A 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] gemini: Fix up patch format
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tue, Jun 11, 2019 at 11:28 PM Linus Walleij <linus.walleij@linaro.org> wrote:

> One of the patches were not properly refreshed. Fix it up.
>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Bah, drop this patch. I was fixing my own out-of-tree patches :P

Sorry for the buzz
Linus Walleij

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
