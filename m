Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 873CA1F50F1
	for <lists+openwrt-devel@lfdr.de>; Wed, 10 Jun 2020 11:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9/dQVyyPc2MUq41o43uTMuZt2XAynb7SSpREVhFOwuc=; b=AUNJGWDse0UwX9
	bf7SmYgMcoCQgv15pyT8R+MNkwqVQT9PZOg8MUKKeKqGEI30ou5H7ODufGlacDC01oWHdaCs0FZKW
	8MVXUPZ5iUtv26f1TEQW7tbhQyqglzfGsKGhoA+jXuvXOr9JQ5esgomweta29t59aiq7yRpR7raHD
	AMCrWMyv1nZuMMAXTSpS7vgEWN0P5EoHVqTaQzYHMRpY+Sgq2f4f9S9E4WGICOET2Qjv9O8W5NmQ7
	8M0OH8YqwUp0ioCkgjR9sGqDN04ZnFcYtpb69k5+XoSy4aht5DbTtO2BZoreIOQowVCBdjt0HRgWi
	zJoULmWOQQGjzZbQ1cqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiwk6-0003CE-B7; Wed, 10 Jun 2020 09:09:54 +0000
Received: from mail-vs1-xe2a.google.com ([2607:f8b0:4864:20::e2a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiwjp-00037N-UV
 for openwrt-devel@lists.openwrt.org; Wed, 10 Jun 2020 09:09:39 +0000
Received: by mail-vs1-xe2a.google.com with SMTP id y123so796328vsb.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 10 Jun 2020 02:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=8FRpuBq0MrZGRdLVtnhKLfFTRp/LVJVyOYxJwHpTYT0=;
 b=BuW+x4A/z8b1QIwlHbe7D7XFCDLrw+/lHVkbO+9pPx+coG2Z4Ohj6bDBmitM+u2wY4
 1OCilshzLAiDRyWEIRN5bdL5Ljf57dCyMIAhQxR/XD4/vXSej3iya8OAJRS742KRFJNk
 QnmO2RdICFSV2N9j/z7V8mnEr98zVFujEEZHJNONkbmvfcNlInEKfkNhb2COV85f+/Gi
 IPa/YNw98UoGAvcLxAPq80e15sw8JXzTYfryvgqXwCBrb08werZSlrjZSN+Gt29VVrDc
 IFyqvvW0rIDhl13hY9ctyY2DXg8Tj/o88SMKx9Z7IOZc89taUXyvkhw0THkOL9Mqy7WL
 8fRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=8FRpuBq0MrZGRdLVtnhKLfFTRp/LVJVyOYxJwHpTYT0=;
 b=SYP01AVqva7uv8D+Wj7fNuhEnbb96BsloyivP/VeXh/P6fhrzM7MecQLitjWMpDN7W
 4Cccpt5t1u7ow4ovuQXDOUal7t6C8CijDvNIPz3fJl6IHSBdd2/p6fxRXGkMZQ7Qk1uh
 9Wf+hYUolyumjauHpd5E2kVlDv4xllT8qsNfiSTvb76xS8gyfQE6wdBjAWHesgB/pQ7J
 YXJx4mdH4ViZvdJ73lU+vvpgqx6po8ox5EshJ8vuZYMzwFRhw2sfpC9OvWusgAEqujnq
 gDZ9nFdk1u45Rlirp5CPZrlzvuoOcd+r6aWJa4FtP8tvRTvt/mHX8ZzMrk0FTQL/1NAh
 hCbA==
X-Gm-Message-State: AOAM532v9RCwYI5gF1FZRzt5IQkIfw4Na5w0OSCMSEqzQnr04a7jz1WF
 hqzyMDnZYPw9BFBYbaPuHPv61wxyCVCCREGUSw==
X-Google-Smtp-Source: ABdhPJy3aXsuWWNYYLXob4aFmmLV5HNij1zf3cIW00FyG2zcEyfbQWcRcE3Ahtb9OI5t/SbCuC0p3OeQ3xuy05pUavs=
X-Received: by 2002:a67:8982:: with SMTP id l124mr1646222vsd.172.1591780175754; 
 Wed, 10 Jun 2020 02:09:35 -0700 (PDT)
MIME-Version: 1.0
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Wed, 10 Jun 2020 10:09:24 +0100
Message-ID: <CALjTZvbpu1Lw0j9dtXZPmVS+i-OnopUo+zuqtoQLnABQGw-SqQ@mail.gmail.com>
To: Jason@zx2c4.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_020938_057802_DEA1BD75 
X-CRM114-Status: UNSURE (   4.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e2a listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] wireguard: unknown relocation: 102 [ARMv7 Thumb-2]
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

Hi, Jason,

I'm trying to build OpenWrt master with Thumb-2 instructions for my
Turris Omnia (both kernel and userspace) with GCC 9.3.0 and Binutils
2.34 from the toolchain. [1] Everything seems to work apart from
WireGuard, for some reason the module won't load, throwing the
relocation error in $subject (other backported compat modules load
just fine).
Do you have any idea about the possible cause? This is mostly a
heads-up, since I'm surely treading officially unsupported grounds. ;)

Thanks,
Rui

[1] Interestingly enough, the final image is bigger (maybe the Thumb-2
encoding is less redundant and doesn't compress as well as ARM?).

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
