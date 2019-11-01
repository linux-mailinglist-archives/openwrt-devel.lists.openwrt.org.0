Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71094EC955
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 21:04:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BCR6ysclQeXHUnGTNB0UGX/TylB6eDEzDitb18g0Nk0=; b=q0W0SZiAmUMKIV
	5ysY0D6rdSMVxZ/pVUwibu3fv0w5iZEINVJe2UTwXu2Aiu1BW9gmfksfJctb/7pGtCxuZ5SfLqFkh
	XLhu8X4Id3IgPnZ+NVx4nefWFt3nw/laMo/rp5dGLjrPW5K5Mym0TxLByyTh3SGuF2p7X+48lRg1V
	qoKmpPNuuZPUIfiM1Omu+dV66AWEg+rZfLapeVqdN23LMvZ5fFIKMNORuxCJl5+icMMwjg9gCtN9n
	hszRIFQYEzOGY/QCNmA8EW09qK6whhqxL15YANwKIzmGbSDgExBPHwAqHABFW74uotolCvOzDVieY
	tyCeRgggs/XLwq9s6nfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQd9k-0003hp-Lf; Fri, 01 Nov 2019 20:04:24 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQd9d-0003hU-FT
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 20:04:18 +0000
Received: by mail-ot1-x343.google.com with SMTP id e17so830489otk.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 Nov 2019 13:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=u8qZMk7N3PIi/jquSdAnCOtfaKB+ho7l7CerPKT6ico=;
 b=EYXLYaBnr1+hfzV8IqsrEniE+M4h9Uqi1BtOMy+R/aKHM1J1S8qgAl9gVNAeUhQWm5
 vtotrPXcUB2QFbbUi9WZI38l9mn0/GR76ckDtlOAegrK8OMflGbq7mUGZLhTG20zcgJ2
 CRiS1JSC7tSyafcJy5SkbfZdte5gvfgmO1rbEqyX/FFrZKKIh7+UiHTlPsnllp19Mig4
 ALHlEfV+UR9xfQEf9u+U/Cas+gxTvfdFn/tPbaXuzUv1YtJVD7rAVdSqkuRoNNa/ZJgn
 r06XQEPZiqr+VI39rczS4VYQYNPedftQTVJ+agbjI1ga/5DpFRulcZ5TdK7Me/Ex69MN
 KB4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=u8qZMk7N3PIi/jquSdAnCOtfaKB+ho7l7CerPKT6ico=;
 b=jCCqZcBz0bRMAiUQLmHEPva2l/k6EGkaukRiCZ1xfdpeeTc/jAtlJQIeLDB1SAtD5q
 DDAVwl350/o5GdsxzQU9yE9sWtaQ7uWY6qPNg491UCkTYDbpsZCwfm9QTl2WEthORLpr
 XSUHbTDTugysXj3D+YomSetJ4o1KO7dur/DZJ3E+HTh+aKChqYxdXwOpgJk6aJSihWL4
 /ZT52rvWrBL0XmhgXZdNjexvBNMTschZTSkCDDU68GEqxgF9qcRAWRhCMRgzwnhUABaL
 sBf0Tp2y8njSC3tCwbWtmQW9o3yzy4TVcsiHDrPYK0ii9X76zApqIJho56QDGAFxZd7Y
 q2Dw==
X-Gm-Message-State: APjAAAUxjTt25H0NDmXRAtPJbZkSLvuE4pHvzEy2xfyGMRwhnWRCos/n
 LOHKTmHFIpeDfouCdWxgWl0OEKs9xhIdOLFTA9YecMu0Lfk=
X-Google-Smtp-Source: APXvYqw81Mmrb1gJWMVlMEVVnRVv6hBpIQE0Uf0MnFJuLrvz0hNegJNcOJBbl29DI4tXdXITC4q4E+2N/FO9/yH3AI0=
X-Received: by 2002:a05:6830:1346:: with SMTP id
 r6mr3242437otq.279.1572638656321; 
 Fri, 01 Nov 2019 13:04:16 -0700 (PDT)
MIME-Version: 1.0
References: <20191101091829.GA16215@darth.lan>
 <fc2f29ad-d8ec-a28b-930e-7c2dc85d7906@wwsnet.net>
 <CAKxU2N8gc-=S6VbeOQ5pUWmXiZyB6JQsC5Hb4PHq_HTMGVzrVQ@mail.gmail.com>
 <20191101192107.GA3019@darth.lan>
In-Reply-To: <20191101192107.GA3019@darth.lan>
From: Rosen Penev <rosenp@gmail.com>
Date: Fri, 1 Nov 2019 13:04:04 -0700
Message-ID: <CAKxU2N9ZPBgP+R8GzhXxx2dVezNEWi=i5+A2om2eFRS1iOpS0Q@mail.gmail.com>
To: Sebastian Kemper <sebastian_ml@gmx.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_130417_541876_2A8D10AF 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] rules.mk: remove
 "$(STAGING_DIR)/include"
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
 Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Fri, Nov 1, 2019 at 12:21 PM Sebastian Kemper <sebastian_ml@gmx.net> wrote:
>
> On Fri, Nov 01, 2019 at 12:06:39PM -0700, Rosen Penev wrote:
> > Would it also make sense to remove $(STAGING_DIR)/lib ? Locally, it
> > seems libpam gets installed there (probably a bug).
>
> Quoting FHS 3.0 regarding /lib's purpose: "The /lib directory contains
> those shared library images needed to boot the system and run the
> commands in the root filesystem, ie. by binaries in /bin and /sbin."
>
> I think /lib should stay.
OTOH, many modern distros just symlink everything to /usr.

Anyway,

Acked-by: Rosen Penev <rosenp@gmail.com>
>
> Regards,
> Seb

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
