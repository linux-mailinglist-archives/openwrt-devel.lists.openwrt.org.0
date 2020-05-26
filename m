Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D641E1C90
	for <lists+openwrt-devel@lfdr.de>; Tue, 26 May 2020 09:55:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=15aiRjzZ0hzPDH75i3OXh1Tyv+kCNK0eKe4KklfzPw4=; b=unX
	V3ZYSeJipLhbbzi0U3Ih6m9hC8kY2+OYK4bWY/ISFo14RhRQDft5KbCL218JRGrFu+BvE+XA/MRxV
	JaPlDaIlfs6iuZjP64eJvU3s35RTBAUOgg1O5LVp5LjmhIqjrcs+WKvh2ebPRc7975yQqbDJ0otLi
	T/oxAoRo38VTwgrOdacklxIiDseS3FKoZF1ZGOFcVFEM9O1PrTffLoUmjRdL0j/Cqy/RQTJ9VnlJb
	7vfPADetBdQhoaXkhUmSykqo5c3lCP0Tnu+zb0ajPEZDtrJmbXAXGNW3DFXuCRN5scyjvzh4eMmsp
	HHPysOh2kG6CjkhJrIKGVO0/98VvaAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdUQO-0004xh-Gv; Tue, 26 May 2020 07:55:00 +0000
Received: from mail-il1-x129.google.com ([2607:f8b0:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdUQI-0004xD-2n
 for openwrt-devel@lists.openwrt.org; Tue, 26 May 2020 07:54:55 +0000
Received: by mail-il1-x129.google.com with SMTP id l20so19388333ilj.10
 for <openwrt-devel@lists.openwrt.org>; Tue, 26 May 2020 00:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=IPrGTp1YL7Q9/rVsaBFV9dxXrwhAlUJH1eFy8Jt8t30=;
 b=bY+8aGaVfhvXcmg36V8nQG+aGrn+XsxNiTJ7+yVny6phjE9X4F1yWSudLReI4rrvWI
 SoDQKISK+30NtW96lHjyhJ9KkAb7H+mRJAQ3E9MMqyiQ0+9m5WqZMjIISkI3GaSNvKKJ
 JFYCBaRJCUIFWagafwXu4talLNE4fjvlUQ2lyqU3k3xK/ClHnd3CBniTfjLtE2hIJo3T
 8glP8kUqI3D1W4Cu1U3yeUmVgd5RVYRU86WVYSS3VQ/LbrS0UG8fflZQ4CC+DNOc8/PU
 XKe4ntQiZ27CMQnn3L5mPCKBa2RvqpEYDGF2FvxsGxcqToXO8fDfoiJ6R30q3wk8AWyA
 e5Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=IPrGTp1YL7Q9/rVsaBFV9dxXrwhAlUJH1eFy8Jt8t30=;
 b=brQk9HCNO1EYls/QSFX4tBwJCT+2bJA+PrrWypR05YXNMENUy3K6Se8hYPIdWVCPxr
 3SfuyQhBQvOCnDVeF2gM/jg5wXQ+2xBmcWBeK5liYndkwxlllCwmbWBmxzsYHb07BP0z
 CRiAiuASFkMAAabRTtcCfKEZBTrBqHdN5p2zJ3J6QccnW619fd0msLLU/ZL9FdLOFa+h
 wQt3wcGPxg/Zprek5+WTglwiW6kOU95zSQ7+KF6kWQ4VJIxDTbfvWi2/jkDSJfldPd5n
 FntLdG4b8PwnXkrbu1tooLrJpH9TyYToOZMK6TP2t4Ox2gDFWf1k81nZ/vG4JW2M/4op
 QbCg==
X-Gm-Message-State: AOAM533ufIO6R40V+h/YAGVCpPooRWLPyauFndBgxYkeo8HsKDIltZQv
 BHr6lOy5agSlpZ3n3S0z96OdhHh9wI6sZ1H8rSiG4QZqdxA=
X-Google-Smtp-Source: ABdhPJxx1NZEhCHlrGDHB+mgS6sF9hbdoFbfrWiXK5H3uQYh3HuOTbUCVC389bkpfFJnRCbZCM3xo0n+52aTCfZ5cCc=
X-Received: by 2002:a92:6411:: with SMTP id y17mr6655ilb.161.1590479692110;
 Tue, 26 May 2020 00:54:52 -0700 (PDT)
MIME-Version: 1.0
From: Jaap Buurman <jaapbuurman@gmail.com>
Date: Tue, 26 May 2020 09:54:40 +0200
Message-ID: <CAN-r--kwq2Rth-JVW4hPvDxHqZe8Ah8-eA5c1r_AnBn_y7hmrw@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_005454_115714_91D273DB 
X-CRM114-Status: UNSURE (   5.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:129 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jaapbuurman[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] ramips: gsw_mt7621: disable PORT 5 MAC RX/TX flow
 control by default
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

Dear all,

The above patch has been committed for a long while in the master
branch (https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=c8f8e59816eca49d776562d2d302bf990a87faf0).
Is there any chance this could be backported to the 19.07 branch as
well, since it's a bug-fix and not a new feature? Thanks!

Yours sincerely,

Jaap

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
