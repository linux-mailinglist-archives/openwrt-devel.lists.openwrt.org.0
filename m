Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 304C1DECCA
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 14:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dwFsr/tr+hKyOwZ2rlOyfOBItZRaET2MPptWrn7PyQA=; b=FT8RiUqr1zcPnG
	mqZ3xHMs2db1wFuty95+Dr9ZCXSnxcyzIlqJO6xL7JLflwpeyVGOOJxQ+PKCx+Q4mh8igvOnQkGLj
	lJeLDJbQoM1nB3ApGNpENPGRVWTdgFAsr+AU8R3ctDY4O4y5WR/0vPvNIZIRS2p4rx/M6GeR/i/UR
	Mg1xF0QtiTef18kAS/LpWmF0qcEM/0FkxquliFWa5uR/A0ZgQ+cYHFFu9TB1VarXnSrVsbaSJLOxN
	ZFr+2GLv6LFC57cGg8SKDWB7SAKIpCEVWBNfjdiiEyQaBjM8KwiD5gXUZFT/618xn16ynsoJxki6P
	QKNy58MzLsDwr+1ZcoSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMX9o-00084M-IM; Mon, 21 Oct 2019 12:51:32 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMX9f-000840-SN
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 12:51:25 +0000
Received: by mail-lf1-x134.google.com with SMTP id y6so3721285lfj.2
 for <openwrt-devel@lists.openwrt.org>; Mon, 21 Oct 2019 05:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ktrZ169Iqqo/P0XXCyA/4PtueuN2fJ1HclWGfBc909M=;
 b=X1gyXUkhc7SlNsEUNAlJ0mYBwjEFaBnosHLImprgKH4651Q6TxX0shCfqOA6fIRxDc
 fyVPLXNZReIRqhLVMyitOfAl9LIoY3J4zVIQLzraHMUp0OZ8h8JHhumBSwhuVJqeSnTk
 /7Lj3pnDPkqPiJa6CpPry5Xj5RjoDjyClBif5nyDzW00GVseBlniZX57FGLMTO08r5u4
 wpqxyLMNQdqEAWEsr9/1ncozkT8pOPMRrV3VGsWN2zOjht7uSnrLJzprMjm14pvXs7zz
 bC13bBeG8gf8yCf9Z6NV1erOeLiZYrUUJzjdWNpk58SdlN22ynEXZ8s9VFnl2mmJgSlT
 0lKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ktrZ169Iqqo/P0XXCyA/4PtueuN2fJ1HclWGfBc909M=;
 b=QthQCHbAJG4a3CgIjFXkhB66UzOKn76lAoUn0iZRnf61Ra+b1wHgqLxmgKEL9vA9z4
 biKIXo8CKftnqQQR7ujwbHZIGxxrLYWZFl0tTuWdwMq/iKfIGUjbvHFWnWOqwPcGSm/E
 JZAyh4n8889OouANuz0bDeOiGM6ySpapSQwJ/RFX1GR01eCmUA1Pl2M+yX27Z+Rc6jy1
 uEw7KFWVJ76EGj87OYL9ujUJ4lqO8p4pE37FZUsHaur2X/DlE/63GxOohXGvcsBMF5dO
 iVeuKrArSPFmTwu+qzFZmYTVI5NZOluIq1omXKKXOBJ93pVryW0jHd+Y+CMU2RqsLA8n
 dNew==
X-Gm-Message-State: APjAAAUMxHGIs+bHCcM3obVI2Ct8YaUCvtOyjs+hghBijgccIv8Ny4v9
 vgwLqjQ1e8GABG1najBbb9U=
X-Google-Smtp-Source: APXvYqx9A7ynL+xGNQu6Mtts6qiK1P544UsnwLmU2K3RxSwcPM/+TsEp8Cy/kdyHeiJm1Cdj9dQWsQ==
X-Received: by 2002:a19:40c7:: with SMTP id n190mr15293508lfa.37.1571662279407; 
 Mon, 21 Oct 2019 05:51:19 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id 77sm5886368ljj.84.2019.10.21.05.51.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 05:51:18 -0700 (PDT)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 x9LCpGPB010430; Mon, 21 Oct 2019 15:51:16 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id x9LCpFhk010429;
 Mon, 21 Oct 2019 15:51:15 +0300
Date: Mon, 21 Oct 2019 15:51:15 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: John Crispin <john@phrozen.org>
Message-ID: <20191021125115.GY1190@home.paul.comp>
References: <20190813182540.w4ee64he6hkteahc@home.paul.comp>
 <20190828090924.14695-1-fercerpav@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828090924.14695-1-fercerpav@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_055123_918966_FD1E13B4 
X-CRM114-Status: UNSURE (   6.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:134 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH v3] ramips: add support for Xiaomi Mi
 Wi-Fi Router 3G v2
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
Cc: openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Dear maintainers,

Do you request me to make all of the changes proposed by Roger
(including adding u-boot data? But the env partition is marked
read-only and most other targets do not do that)? Or the merging
proposed by Adrian?

Please clarify!

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
