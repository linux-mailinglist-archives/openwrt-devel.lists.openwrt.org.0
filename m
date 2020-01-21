Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C918C1445F8
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 21:35:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQZwuOghSj2ytkc4QfCGigL+eLP3boASj3S/DWaeA4c=; b=oS5ljSdh447Y/r
	BuRq46WdNcSEsI4M9GVV63wHeoY/S3ylHW0GPGK1P793Xn6LPZdAIWXQqGpqYGFZ9Qv8gLhw38PNR
	w5brKnOeZmerbQBT031ahtX2XcG8ok9B85vhqtcYMmMhzLPlXhQbLYC6ABVgxT2P/HQc+sgndGuJw
	Wm1BFgTxbhzY3JSn9m4lBq5LGi0erNmUr8ayHVFDUWZF9OzrUr+OvRTTywlMZdUkJYUjhRQcR6zsD
	1zQ+xSrTUv7e+tUia121M5fndovdk8hlZvP0rUfFFkJcyyZl3nfmZZIBUe4w5p1jR7taXwmJTH2S/
	cUBFIm3SVS0568pcucXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu0Ew-0000KQ-S2; Tue, 21 Jan 2020 20:35:10 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu0Eg-0000K6-M9
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 20:34:55 +0000
Received: by mail-oi1-x22b.google.com with SMTP id n16so3885525oie.12
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 12:34:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hpVvU+flWB0b0GgN/mVrVIqQcJIUhNP+7T2Vbhb2jK0=;
 b=dHgWv/n8phxItgU1GXSFCo2BE8uVEwpBRgrVqxEDRS8awrpMBe+ysPXYQ6rvOeXWHW
 e6oVQ15CDPlYz7gcf0G3sJt+NLQZwy2luauB/VIid3JcPqv4HfBDB5f4r6UaSm50Pqah
 vy6nJv9ooO5UeB2S6lGxB5D4LNdR6xeO9BLRUS6aRotfxSeNwBAtnkIfv2aWGe2xTVQl
 47OHJDdzrHANviELERQTPCv8frvDuw0SWNTEUa6x24Lxz1ecRDrP+56GAy7lApkUYnaQ
 01g6Oo6hD69kDM6saidAfmgPCp8ZYkjnD0KfK87JwBZlJ77eFE5TGprGWqrin2QDcFfg
 YDkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hpVvU+flWB0b0GgN/mVrVIqQcJIUhNP+7T2Vbhb2jK0=;
 b=tFc+Bk7tf/kPpuLC+ENgLrC6YsqiIK8xEPjSXuJHEYA4SzVDhmBZLQshGZ63Me+NWh
 uRoUv5Eeq5IvQIsPA8ujG+vwCUJSb/o/526m34/IesSYox5YCIM474ly1PwMkJHN9YZk
 iXjOt3mVU0/Qv1i3dnh6Fu1wPtVHQdC88wXEYcTqY9mJ72pz2bA3sNe/Fc7n/5Y+qOXf
 tkYDWb32xcgNrl5Pr/GEESXXdiiRg8OV6k/IgJU13Hw7689LpXgIJVtIvim8PJ0KwhL/
 E1DMN0ME5FFOqyjTXk+n4wh/NVCA0ngsow2dzuUizondq+ehkuMITb3hfDNh1AiczTsJ
 eSmg==
X-Gm-Message-State: APjAAAXO+lKe8JarcS8JmyiS7HolDIG+nQDS8rwHLMk0BXXlKl62ynxI
 ueqXy03UfvngcQEpMiLz84aEbzCuHDkDn5VrfaLhNA==
X-Google-Smtp-Source: APXvYqynDtkAhjFYecAq6uyftY9y7nucfw7mkBywDFqXoRnNnPGuB1tqvDJIPTKzPTkrrWnozHYqQ7+e1LugZxPB/CA=
X-Received: by 2002:a05:6808:8f5:: with SMTP id
 d21mr4508678oic.58.1579638893714; 
 Tue, 21 Jan 2020 12:34:53 -0800 (PST)
MIME-Version: 1.0
References: <20200121201120.23516-1-mail@david-bauer.net>
 <20200121201120.23516-2-mail@david-bauer.net>
In-Reply-To: <20200121201120.23516-2-mail@david-bauer.net>
From: Christian Lamparter <chunkeey@gmail.com>
Date: Tue, 21 Jan 2020 21:34:39 +0100
Message-ID: <CAAd0S9AqxVfxYGz=Y+9E5_nfXAAYrFMPa_OF+2u3tnd2RjuVhw@mail.gmail.com>
To: David Bauer <mail@david-bauer.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_123454_728925_8B4D9243 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22b listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [chunkeey[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] generic at803x: remove unneeded
 patches
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

Hello,

On Tue, Jan 21, 2020 at 9:11 PM David Bauer <mail@david-bauer.net> wrote:
>
>  - Remove the "RGMII TX delay fixup" hack and the associated
>    DT-property. It was never used in a DT-based platform and
>    solved a problem which can be mitigated by using correct
>    delays on the MAC side.
>
Can you tell us more about what are these correct
delay bits and where do I have to set them? :-D

Acked-by: Christian Lamparter <chunkeey@gmail.com>

Cheers,
Christian

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
