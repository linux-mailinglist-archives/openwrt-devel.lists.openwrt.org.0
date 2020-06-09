Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC90E1F3702
	for <lists+openwrt-devel@lfdr.de>; Tue,  9 Jun 2020 11:22:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YiAH+UEotgj/zfBIvNwBo0Kp0F1rlcRoBRR78M3UAfI=; b=LE42XF/N7qycEW
	vICBpQsVIazleOgTWtYYCltUZ5CDuBRfEOROXloew0yOxMOlkFBckiMequzeJpJpXt0SWiSPtZFwP
	eIbw8doBIrXitN+fZKUibCQmFlRREJ4AJHQ1bnr0Q5HcmK7w3cLj7LhOWS60Swsw4mztUO5fHruMf
	cnN1ZHy4G9S8gQj8tvdR2U4jWd4N++Cqq2PV8SsUfhUWRNnIVZpiJFITJBICS8ToejTCZS704zOFO
	SniTyQ1zejdq8235TUMinOr7g4UGcjwQpQOYuNqbpxQkbYrDNyNgCXOuoafGiMG5TRI8NQZ5nbuRV
	LdSH18kfAcg/qNp9XM3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiaSl-0004jz-OL; Tue, 09 Jun 2020 09:22:31 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiaSe-0004jV-ND
 for openwrt-devel@lists.openwrt.org; Tue, 09 Jun 2020 09:22:26 +0000
Received: by mail-lf1-x136.google.com with SMTP id d7so12030151lfi.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 09 Jun 2020 02:22:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=1vP0EdPBL8G+LUC657OkQjmqvrTIvzwQ4E/UaYmHho8=;
 b=kVHRW1TxXL5VpBAPnLNf2fBLONSinD69ik7QzuFUGAuc3wl5Umba0MfUvRcgKRa5Sc
 TRtBiP75FAqD/Dr5WcSzy24TGAtZnMGjczBRqESGKvH1ZTqL5zbouWzJ8IIxapxfL1rA
 MfU+6vKMKqopwG9OnYK4yAZAFASkHoQ6nR2rJv4CB6rb3kSaq+f/8YsjhLZ6f7g5uxD8
 dyrWAI5LLuGitdsTQv2/uSl8pjNhAm4La3n4GPO6eEbbj3GhfL05LuxZd8PQ0btFL9QV
 4scDiz/NiWDLjudyYDqOEgeg61t4zQHWuBFu5Vo7AdwDvhrpUstNOXujsqnB9jK+i4cc
 jKFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=1vP0EdPBL8G+LUC657OkQjmqvrTIvzwQ4E/UaYmHho8=;
 b=U6hppz342Pl2s0URsAuK/GX9wSBGMoWbKaWzWhm0ztA6moHRhRDzNc6jHqvtrql4rh
 TmaMKemBz7zDyfdZFhuZa8/OkrMk+T9EpbtrxTvDSbWhXBt9hd0iIlnLGNh5rS6fLz1x
 XUexuCZrOwCHkFQHW8gwaIaNx2uIz7eHhDoCfhZpssALtAUk1pILlbJCW9apS0PHnut5
 CcgSkWxIT63+EMPhHHMlJm8808EedqFPLVsfAgoCnT2JvqrqXSlXbUMR398/lu/ipkov
 jyNetFVmersy+a33dpb5HyltcvU0EZVpUgcaySEQUizyxTTgP5Pl21lxBANR+R2OpcOf
 dmEw==
X-Gm-Message-State: AOAM532U0aixu0/I3QLULQ/HVUzojvwJzU4BIj+WsVat+YFo32xZNqKz
 FENupFkspebdp7o4LRSRA64=
X-Google-Smtp-Source: ABdhPJzHW5kYUJwGL3gcejJMJiV+bvdER5scg9NopK9iMJpc/QftYL8SwC1M+Oy9qjRx7bOn2CwqCw==
X-Received: by 2002:ac2:4114:: with SMTP id b20mr14823652lfi.34.1591694542266; 
 Tue, 09 Jun 2020 02:22:22 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id m10sm4956415lfd.15.2020.06.09.02.22.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 02:22:21 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 0599MIfc016537; Tue, 9 Jun 2020 12:22:19 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 0599MH3r016536;
 Tue, 9 Jun 2020 12:22:17 +0300
Date: Tue, 9 Jun 2020 12:22:17 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Reiner Karlsberg <karlsberg@softart-ge.com>
Message-ID: <20200609092217.GW24504@home.paul.comp>
References: <fd9e3be6-f614-92b3-e9b2-55a366e8e665@softart-ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fd9e3be6-f614-92b3-e9b2-55a366e8e665@softart-ge.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_022224_780701_CAD4B50C 
X-CRM114-Status: UNSURE (   6.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:136 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fercerpav[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Build error on latest trunk: meson, python, zstd
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

Hello,

On Tue, Jun 09, 2020 at 11:11:06AM +0200, Reiner Karlsberg wrote:
> ['/etc/openwrt/WE826/staging_dir/host/bin/python']> is not a valid python or
> it is missing setuptools

OpenWrt build system checks for Python3 presence in the prereq stage
but it doesn't check if it has setuptools installed or not.

In other words, your host Python is missing setuptools needed by meson
needed by zstd from packages feed.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
