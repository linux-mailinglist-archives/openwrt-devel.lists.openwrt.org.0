Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E0E1A52F1
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 18:49:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xHo0JTEkr49D63X9UoGBpsko7zyRmzBUkr84XkhKHlM=; b=ntq
	VQuFTdVHvijqw+yzRLbyjT0xM6CIRd4p6OYWCYi2ah2MXpbXoWziDy74OF84/GSOeaxW30cjXfYhd
	Xx9bxv78P1M4ZXxfkr3+/sSqUT706tFmtxi1AhRKAYSk/tfoLkocfiOAnZj7CvwOStq5pfB5Pjmcp
	kDFCFVzzzwzLXjmSxwNKznwmcJwyhscVXhGdZii2yPIpvxGpt4H6Z5D2UqrdOkqgl5BlLWw/TJtuk
	es8+PjOS5aLAq5Cqbhn8mDQb3ZjGCHSX2d7sIRPeZ0LNj/SV9r/TwVFobH2OT/4UkXm/yZEm6eItJ
	NViMAgsIwMwE40qzFd357J2Qk7IZibg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNJJE-0004BG-FR; Sat, 11 Apr 2020 16:48:44 +0000
Received: from mail-io1-xd32.google.com ([2607:f8b0:4864:20::d32])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNJJ8-0004Ax-Ev
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 16:48:40 +0000
Received: by mail-io1-xd32.google.com with SMTP id m4so4822967ioq.6
 for <openwrt-devel@lists.openwrt.org>; Sat, 11 Apr 2020 09:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=9FXJxYEw78hMHiGyVp4dxIgBYLwEY3n0GZxHKDQ4vtc=;
 b=jh18B8VLCuyDsyk4TeBpyCDWVntLRSV+bPmxLFhoOYSRVaLdhBJ2RBJw+H/vwvaFYL
 gd/LuD5m4Y2RIafmbh2joMiYFJjXPCrQx3Ctnk+SCe9QO0IWLdSJWphk6Lm9t++DRIA6
 Z5JW748tGsBejS1ZXxQ19/15SiRtLRUjZQQsj48yQu+Lm5160uNtpfF0aFUc8qu11Or2
 9W1AWdV1YVk1uTaBQQhDF4PS4rwY29OYntUP2iawrdisp4Cz33eorOUBn4s5RxfnrNxJ
 VmwfdY6ccMDBEpbElJ8Zr+PYzFGiZmoBiup6GSneiC24IqBSqPIjEAo4ysj3gkobfxvI
 dHlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=9FXJxYEw78hMHiGyVp4dxIgBYLwEY3n0GZxHKDQ4vtc=;
 b=VySfLoFlGQQh3ZR5r7MxMD63vmFoc8hDjM6fAE3PnmpbOpJl2tx0Ra5FT/1XXmxiqu
 L5hT/dj2+mlZnbaRutrCkx71tvlH9L2u6ceKNFKeAHKXnJxLeNEnFlPbxGvCpJ80zRL3
 r9KoX2FSn+ZoTJvYl+Ide5Mfd/28pbmYc5KXophDGxySJ74fsSFjVSAdD+YdA6cx8t4W
 LQWcJIQmlxdeapN0qI9wLcwArUVqdff9i5z2hFLCShamnf/x7+VqjOtXY/Q2ba7UMxWD
 01EEB0D0d7yMiq195tm2ONG1B00qcXPz+NnxYosalWQf7ekV9gAYMY9TC/Ifxa6YTgtg
 c3Cg==
X-Gm-Message-State: AGi0Pua+HPvnklhBaod9hQG1kyFLZOYPIBYzxGqN2urL8iLVb1Ws6u6Q
 wrQT7EjpjPN8TadkiJz+/3Zp2grHEszym2eI9QeEeBrFu6g=
X-Google-Smtp-Source: APiQypLuFMwDVBjD3bDhHoxLrnqMo2gafxjRJd826EMkcKaEdcYyUrCB0szDsLTd/ktMOZsToEoUhwV21n+nt9Qq0K8=
X-Received: by 2002:a6b:398b:: with SMTP id g133mr2944499ioa.102.1586623716845; 
 Sat, 11 Apr 2020 09:48:36 -0700 (PDT)
MIME-Version: 1.0
From: Etienne Champetier <champetier.etienne@gmail.com>
Date: Sat, 11 Apr 2020 12:48:25 -0400
Message-ID: <CAOdf3gpDVBzWe=2qHz12XhtbsmXrJNpd_nW9k9Gix1mHtzNe0g@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_094838_521446_D979B857 
X-CRM114-Status: UNSURE (   5.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d32 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [champetier.etienne[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] MT7621 and bridge firewalling
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

Hello OpenWrt hackers,

I'm playing around with OpenWrt master on a MikroTik RB750Gr3 and
would like to do hardware accelerated statefull bridge firewalling. My
end goal is to learn and make PhanTap
(https://github.com/nccgroup/phantap) work at line rate.

MT7621 supports flow offload, so the high level idea would be to:
- create a linux bridge with 2 ports (say lan4/lan5)
- disable normal switch offload (do not forward just based on mac
dest) and have the packets go through netfilter
- have netfilter create/install flow offload rules for most
connections like we do for the routing case.
- enjoy

My questions are:
- will the hardware let me do that (any restrictions on the flow
offload rules or ...) ?
- is it already possible with OpenWrt master (I was not able to have a
bridge without offload yet) ?
- any pointer to ongoing work in that area (while writing this email I
just found NF_CONNTRACK_BRIDGE)

Thanks
Etienne

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
