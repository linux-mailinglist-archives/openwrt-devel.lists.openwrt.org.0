Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF5D1A27A9
	for <lists+openwrt-devel@lfdr.de>; Wed,  8 Apr 2020 19:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+IVfA/6BABj7Ez7sewj+EXgUb3HW6Fj6I1fIidTO5OE=; b=NGtZ3YWdOjt0Ra
	cWKQH69xfXP0jvjHUm1fFdFDmfj/35jo+23n11ZpC1ulOxGEx0B+1CDmmExgYRzEkGBdISpXco4nf
	2hXB4qVge8dPLSBj4YTOokrQDqaDkIvpSHF3Tg9kowVk/H3HwAA9DWy2gQh5OjWONEPqIiRXaUaSZ
	aLdT966JKYDn9XU5uYc/sRi9Gco9bKOBfFBErISg/U5C1o3tShxRKFwjKk5XLlie2sYrgvlzYADd6
	W50ibuf4UaxFUddeuGXYHRBBQQ3pHD4o5i8e9nu2olL9Qm/8S7REylDPEJFgSTGQ7f92iiCUVs5bh
	W394rqxj0+/1Z6Sf6Rmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jME6S-0006fx-Fl; Wed, 08 Apr 2020 17:03:04 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jME6M-0006fc-CT
 for openwrt-devel@lists.openwrt.org; Wed, 08 Apr 2020 17:02:59 +0000
Received: by mail-lj1-x244.google.com with SMTP id m8so215206lji.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 08 Apr 2020 10:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=H9KQnnv/qCK3/pb0VtfJXZcgndLyYL/9ejNLLZj3znA=;
 b=ePQ9ssbb1oLPP32l661E1Z5emp2jdTTta/YVLJggAyzV36hBuEjRNmNDlc97WZ5hAY
 aEBkTQNntvTaIscyfx9v2SpnDwN3wX+sfDYai7Fr4lUdDsUthsyPR8XLzFRpsY4JdJxU
 rmDHLsV15bI+VWCcM0ng1J28ERqMbKlvIYNMMEEyyL0k4BzmzezsOqJrhDtI5Mwg0m0O
 D8G7tFimhpPdNoa3B1KtVwAamPi20bLJ3Vrsq1wSDKN4Yn7WpBRt7tTrkZ+7k8xPZBTo
 T3362YkDrG8fQa09vM7twZ3nwkO6kxg8iCsbxcUtpEchzvbY5J5dBib0gOxx7bw3aHAS
 aSTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=H9KQnnv/qCK3/pb0VtfJXZcgndLyYL/9ejNLLZj3znA=;
 b=qjHVKPU2VD8MHTtMQKyWzc+LWyWPITAzwj8mAIKHsegCoreHB8/6RROskj3a0F7m3D
 EWnsx9cYdu6F6zH/AEh2TQ5q2CdgzzJHhySpPkSUUkbssNF8YB8XRTpEGWhoBDiTmHhG
 jQKpOvHBYyTlpwWF8bA22XRt27ohtgk/ecq+MM0FzMj4tEuJG1L39d1ouHd5o3/D2aRm
 HAQ213y2fBUPgt0F0l1A+I3IiVcHQNvm6On4vVnPmgl0NpRDsCymkGqbyDwfKgNDIRJ+
 4/rH50qzuXM86t05NFWEL1i/gakAweafp/nU/TAku/3nSMrp9swwCa55yqUYrp4QgZlx
 0vEQ==
X-Gm-Message-State: AGi0PuaEmqWBw/EU2l/IRafVxuHiOip0BgvU4bMWdozXkSGjyWcf1f8R
 FPx2MiLr761lVm9tnvvV/YE=
X-Google-Smtp-Source: APiQypJuwZfctGNO+p7vbi4ajxF0P+A6rBNjlmvaS30LMKKrOTW6kF//03tlvkya2Jpe0NFXqYz1Iw==
X-Received: by 2002:a2e:998d:: with SMTP id w13mr26341lji.63.1586365375938;
 Wed, 08 Apr 2020 10:02:55 -0700 (PDT)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id k16sm13885977ljk.64.2020.04.08.10.02.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 10:02:55 -0700 (PDT)
Received: from home.paul.comp (home.paul.comp [IPv6:0:0:0:0:0:0:0:1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 038H2qJ4016697; Wed, 8 Apr 2020 20:02:53 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id 038H2kxE016696;
 Wed, 8 Apr 2020 20:02:46 +0300
Date: Wed, 8 Apr 2020 20:02:46 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Chuanhong Guo <gch981213@gmail.com>
Message-ID: <20200408170246.GZ23797@home.paul.comp>
References: <20200406114428.1189632-1-gch981213@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406114428.1189632-1-gch981213@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_100258_449158_BC457971 
X-CRM114-Status: UNSURE (   5.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [fercerpav[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] generic: spi-nor: rework
 broken-flash-reset
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

On Mon, Apr 06, 2020 at 07:44:28PM +0800, Chuanhong Guo wrote:
> Instead of resetting flash to 3B address on remove hook, this
> implementation only enters 4B mode when needed, which prevents more
> unexpected reboot stuck.

Probably a naive question, but does this have any measurable
performance impact?

In any case making reboots more reliable is worth it.

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
