Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5063216823A
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Feb 2020 16:48:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:
	In-Reply-To:References:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMh8JPg6f3Jx4IFd2vPnEZny4nGZEyoYa1KiTpD+Dy0=; b=VFdsKUF1EonVY5
	vkS/c0lW2WF9PK97nOB2/iwcNP4475JN93o4T3+JS7PapotY0boHAtk0EYs9Z0fBCYz8HszEUd4sn
	qxqQxg66GvWaV2Fv56bKMmhS0RbsP2AAXU/s7cWV5dtJ1MlndIJGgtuSpWlKj+YNLBT7QAtXA7o7h
	CUDal5wmPHKRHd9FElXkptJaIc2z5+9/39YEeCWflFnGYOc1HFRefAa4BZxy3d3JnwxD4AfGFUe/Y
	luDQMU03z9+dHLiw0ZXv8ppHX66Nt3rG2+SZdrNbTK1zUmMXAMymOk21/e2MbNvNoo8ai0BdRA8U2
	1VvJsjRmoWhz8VpTOaow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5AXk-0002Fv-Lq; Fri, 21 Feb 2020 15:48:44 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5AXa-0002BH-E4; Fri, 21 Feb 2020 15:48:35 +0000
Received: by mail-wm1-x331.google.com with SMTP id b17so2421598wmb.0;
 Fri, 21 Feb 2020 07:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:references:in-reply-to:subject:date:message-id:mime-version
 :content-transfer-encoding:thread-index:content-language;
 bh=KiUaR0du5rpPb4Ai8PsmClw8BCFjPvBZygSLMS7YCR8=;
 b=tnp6HyznuJVDad4kfANg5PwQ+m96xPmsG8a+beGZ08Gm6hN1N1jO9VRZguhy4JLacx
 3FJlzPVKCzE3DZIRtjTRPVUNd6B5mHVvFc0DTnky6Y5hlLN913Kh9YWTlq6xu0yPSjN/
 jiTPIiX2M6YSJjqXFu9S6EW4XrmzXMRfZF+9JdX2WA/H9xHk+smx+haAVgqnuHCZecW3
 GkAdrsM5sRf3SsZw0y7tK8Epyg+qXC+XDBC6bdLxTXxQbxKZm9c5vkhIxcFcduBPbX5U
 Px0SAoZgWfr3oRBuQf2f/hpgrgpkv13ld5BKXkpWKEWO4CiXGPCKQut9c+Ze0xov8cMk
 GWig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:references:in-reply-to:subject:date
 :message-id:mime-version:content-transfer-encoding:thread-index
 :content-language;
 bh=KiUaR0du5rpPb4Ai8PsmClw8BCFjPvBZygSLMS7YCR8=;
 b=SehPi/2SMpuUDoFuDzvSUT9ojLzrZjfT66Rz4CUWObTP2gihVEqKVxJLQvWIAn1N64
 0p65sKaPZQJ5RsxIZVIYCTm0OiW28zMxSPrO6wy1np8LEkeXAwQOy+HW67OSNq3LPUL6
 osF19m/8IfkInmyDP+3U/EHP90KxTVn8iA26YvbsnGMS/Rc3PQG7cK/u+0KinClCdHc4
 FVmBq7gVLtS05xC7sFCLl8Y/CMMtMLCk6nQIA7GpdEfLQefMTXb6R9DkGo7sO2NKiEVZ
 iBKloy9HH/yHrArhMTcd0TNJmQOnHAvx3EMGxW8D5gdzdYh2OoPZQaBjrOw7nymlkfML
 mQCQ==
X-Gm-Message-State: APjAAAXskgEQcS2rQQSbQ8VmrU2N969JlYrEDKL6ECCgpHqZwdGyVSJ5
 qzOYXIoAwUNlQ3HnL/5te2KRd6+jmGc=
X-Google-Smtp-Source: APXvYqzhEWIBE2jGwLBUPKy8TSkIiBedvmUOQcb/gStXpltQpKT02/KN2hGBn+onm4uAlZ6vjNeyCQ==
X-Received: by 2002:a7b:c10e:: with SMTP id w14mr4585448wmi.61.1582300112900; 
 Fri, 21 Feb 2020 07:48:32 -0800 (PST)
Received: from AnsuelXPS (93-39-149-95.ip76.fastwebnet.it. [93.39.149.95])
 by smtp.gmail.com with ESMTPSA id 16sm4203988wmi.0.2020.02.21.07.48.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 21 Feb 2020 07:48:32 -0800 (PST)
From: <ansuelsmth@gmail.com>
To: "'Jo-Philipp Wich'" <jo@mein.io>,
 "'OpenWrt Project Administration'" <openwrt-adm@lists.openwrt.org>,
 "'OpenWrt Development List'" <openwrt-devel@lists.openwrt.org>
References: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
In-Reply-To: <56105ce3-f528-c9da-d8dd-370c80829e53@mein.io>
Date: Fri, 21 Feb 2020 16:48:28 +0100
Message-ID: <000301d5e8ce$5cdeccf0$169c66d0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQNfK3hvy2IF8ek8/lLZH+3kaWmJsKUTRZCg
Content-Language: it
X-Bad-Reply: References and In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_074834_479879_27CD9AAD 
X-CRM114-Status: UNSURE (   7.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:331 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ansuelsmth[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] R:  Next maintenance releases
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

> Hi,
> 
> I'd like to release 19.07.2 and 18.06.8 sometime between Sun 23rd and
> Tue 25th. If you have pending important fixes you like to see backported
> to the respective branches please do so ASAP or mention the commits in a
> reply to this mail.
> 
> 
> Regards,
> Jo
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel

https://github.com/openwrt/openwrt/pull/2769
Can this be merged?  It fix important performance problem for ipq806x


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
