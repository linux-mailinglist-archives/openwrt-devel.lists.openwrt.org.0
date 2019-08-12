Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB648A374
	for <lists+openwrt-devel@lfdr.de>; Mon, 12 Aug 2019 18:37:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ld/qnKyToOOYm6iSkqmSP1xKodBDFTBU+TXQtTtj4uc=; b=daTSoAs391Akmt
	z+gDpOV2Fp26mXAV0Qx/nmhPDGMNjn/yxGyjD8PzJp5/FZX8LDmH/D6m2Xbw/d3EWlGAeBj5U9uia
	VY/rw10JL5An8KgsDkPnALUvHUYfEz5dehOgUHjfmHCPtdQcedjiJoXpGD0LcOBEK2bWpsYZ3syYG
	pa6rfu4m//zdxSiXhJn9KmwZisHs9zlT+r2edid+lGjAEuQmpsBbTs9/L6gVZVh0Mnd9mKKMsaRTl
	9mRekJO7nCFVjpnqGjcpAyZxmo7D6NgR8cUQ1dbmKPqMsdXnOTkr1L/LtUzbudlerLWISC3W1si1r
	60EiVaBVqeflcWzqgRnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxDJh-0006GA-3R; Mon, 12 Aug 2019 16:37:05 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxDJY-0006Fq-AE
 for openwrt-devel@lists.openwrt.org; Mon, 12 Aug 2019 16:36:57 +0000
Received: by mail-ot1-x32f.google.com with SMTP id g17so10220036otl.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 12 Aug 2019 09:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Ba1sj+967QX3mQaGv9l6stOaS7s8v1TPyHB2cQaYZu0=;
 b=ZP8VN0fkUQPsbwaQQU3h56kE3Ok4oBEQsVYvK/abc5FEcMnyKnsJjV7cZA9Nrk4wV2
 UIgWmL07VwyE2V4THtYFfCszevr7Qqfgqacm3UtdvDbRVH8p6aTbn0edRtJ494zx1imE
 L0CTAkXyoa/2tLE3sny2nQDNSCyfhJ2QdKozlba61PaOC5T+2wrJatCDLgj6zJqKw84V
 T7eaaxx/r2ZfJgPmDUT9U39pEgl14R/aOHdvR/ZgjA9l2QjXJ1TQAUzr2W6HjZPK+mpe
 UeoWxyJVwB50P8fLJ4gJV9nDH22XR5tqMNHpNUqxzmAcUzOKeVm+QhXBd6jcIicQUqb8
 ncAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Ba1sj+967QX3mQaGv9l6stOaS7s8v1TPyHB2cQaYZu0=;
 b=AycWbVR8vNfEDw8CdUvYRP/40130qmQ/nCstTark0hkC9jMmhDph7X43JKEmo45tzv
 xX8EnIYrAFRgtlzMbwOOdUcrk/Xs7YVYQo1MPrfHnGBua/JIjyOPA03BuWyK91vFhutO
 PioN5FcNOz4ktH4Nt23H7i6oPDCt6lIVVDr6z+k+IuunV8mP4/RKeA8IpzJeVGKizbKp
 1d+w+Zl8SE8LBHBBA+s5UNuonlkoYUXKOfuQx6msTSinUl/8LKlk+FDpabumV38CfgNQ
 VSpXDnnAbDdljG4Wwy29BiFOn8sPmLkx7YLnBgYGu84a1b9yRXNKKMbsFIX7x7Bcp8LU
 YmQQ==
X-Gm-Message-State: APjAAAU/TDa8+wsGm+lbupA/vdAwpsFd2nXqQvbLxhI1al5AfJaPiasW
 akbzXYrcOZpRj1NgirlN1RiN6sxTuqsAFXcc3MaT6bFy
X-Google-Smtp-Source: APXvYqyAVC4M2bUh2OdwqnbwQ87OO6c7CKyQ0c2cTsjDfq+/uLqIRPoiMQ1+ojoMEpsrqpeQmV3hYdJfL3Z8ct5cSLA=
X-Received: by 2002:a5d:9710:: with SMTP id h16mr20923092iol.237.1565627815507; 
 Mon, 12 Aug 2019 09:36:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190810172240.2903-1-freifunk@adrianschmutzler.de>
 <6JFZMnrMDEEUsp8H3PdUX3HwuhvWjtqNG6mdeMPf2364@mailpile>
In-Reply-To: <6JFZMnrMDEEUsp8H3PdUX3HwuhvWjtqNG6mdeMPf2364@mailpile>
From: Dmitry Tunin <hanipouspilot@gmail.com>
Date: Mon, 12 Aug 2019 19:36:44 +0300
Message-ID: <CANoib0HfWJQP3_yUEmBuarzxvuC6GzHnWAr6JiH46dFsSpQq_Q@mail.gmail.com>
To: Karl Palsson <karlp@tweak.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_093656_380392_7A8D3F85 
X-CRM114-Status: UNSURE (   3.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32f listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH v2] ath79: convert devices to
 interrupt-driven gpio-keys
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
Cc: Adrian Schmutzler <freifunk@adrianschmutzler.de>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Tested-by: Dmitry Tunin <hanipouspilot@gmail.com>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
