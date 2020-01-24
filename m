Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 853CC148B8D
	for <lists+openwrt-devel@lfdr.de>; Fri, 24 Jan 2020 16:56:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLPbFzMacXDEVdkoV0nQFIBjfZNBWeLvSfKB1RRY+LA=; b=BsVSRSy9SLDqqK
	sjUyXW6XjNsMcFkccoOY9sn8apndv273JrBl6V2URo2MuQUbDoyzvkva/p5E9wZxuG1QWB4nQUKyY
	3tRO/7S4A4wcCbcNBjm4mkHdWazjvxhRMabIqGpZnGmrJEVYqUuvgb4YVeNUn4CBWvoh+30ws76/F
	L/h6A4e2FDC8ZPJhKH7SJygl8WETIM8AXjWCJaja7tGj1Bg87xeWM3M2V46GmyxCjkJdUxsxw/Hkm
	Eeap5kGxeHjKohZSLk0R7KZGku58Dovhmo3UFzxjGLZQ8ZPSTvWMLxVuwNNI+1J50IN2PHU/oPtwN
	x3aRAzWETlTqzTPnq+5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1Jv-0006g1-JB; Fri, 24 Jan 2020 15:56:31 +0000
Received: from mail-vs1-xe35.google.com ([2607:f8b0:4864:20::e35])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1Jn-0006fG-3j
 for openwrt-devel@lists.openwrt.org; Fri, 24 Jan 2020 15:56:24 +0000
Received: by mail-vs1-xe35.google.com with SMTP id g23so1507406vsr.7
 for <openwrt-devel@lists.openwrt.org>; Fri, 24 Jan 2020 07:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0wo1hUD/tBgNSsWJd0JvWdM5J/3fESDXsxunkysBIAA=;
 b=bSXCq3DPYnDiQUgODo0/5JBatIZ6QuFUjlC8KKefXelPLtDswF0bNvRqu0XutIBuzK
 3mq07MK7wp/y6LE6CPnR1P1ixFNJTisJxcAVYuzsEm5xqcoeG9K6WyJEi4PdaNfOfcxQ
 3qIsyH+GEbqgJbAknG1/Lu8/t8zej9a1zg7nc/yYlzAI6Z653OL75KL4AODg+vZ4ZpRQ
 cVUEQySRojmdR/WAKtn5EHbCJrIHLbdx+3VJQ1xYv+axwPslAtZ9H2l8yzj21Pau3sIs
 qV1zFR4ZJHAWLH0rmAS4J7iVVR457NQBeZYtgbNOGOYGLoVXwgPI5RqwO7oF4WWREXZ9
 zHeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0wo1hUD/tBgNSsWJd0JvWdM5J/3fESDXsxunkysBIAA=;
 b=KCc+RR2KMK5mxVKaAlbtcy19+HKIFMUwApRAUnZdTsVXSbq28wmYSFa+M88nCgZQwW
 4Ywfzyla7LiC6XpWMWhbGtDHf1eVNuqjXRGbh/AUAE5bGxDAWArbHArxZh05Z35y8DnX
 8iQGz+aN0TlKlVBZIZTAdqrwvm84f9cz7Bh3jm3gY9E5LvYRNZxmUoRVe+FOpFcPOKGW
 wmCQtkHA7KEyc9zqgOcA4//wduXPZIIFKMP4nyx1DQP9uAudmm4yDXyKRs9h9NYERNXy
 MmEy2tzZ596eXTfGhxG/KAP07k/ralRn7DNvJbzz1rr058DBsBJ19ebBv9ON/76QU5hI
 K13w==
X-Gm-Message-State: APjAAAWD1zU8Bxvum3bk76oq2qJ0EBJmGeGGtWQxUXIGo/Z/ZcsCsfxH
 h/MaJd1sXxEHzt4a34ffChdX4EFA+aZp4sD+T6uo
X-Google-Smtp-Source: APXvYqzIIB9KxOvhtWtAIGlCbcWRTiesFrJpUKX8DLHFJ7uNDV4JuCPGqvB1QMv4zJ2Co2DAW8ekqQJeNOnNkcouxQQ=
X-Received: by 2002:a67:fc09:: with SMTP id o9mr2577294vsq.75.1579881380832;
 Fri, 24 Jan 2020 07:56:20 -0800 (PST)
MIME-Version: 1.0
References: <20200124155238.17749-1-rsalvaterra@gmail.com>
In-Reply-To: <20200124155238.17749-1-rsalvaterra@gmail.com>
From: Rui Salvaterra <rsalvaterra@gmail.com>
Date: Fri, 24 Jan 2020 15:56:09 +0000
Message-ID: <CALjTZvYPnMbka5SL2bvrHdqFOT3ROFD4WvK2gPHCz+FDzw2_bQ@mail.gmail.com>
To: openwrt-devel@lists.openwrt.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_075623_155538_27EB2E9A 
X-CRM114-Status: UNSURE (   3.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e35 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] fw3: robustify flow table detection.
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
Cc: ynezz@true.cz, jo@mein.io
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Gah, I messed up the subject line. Will resend shortly, sorry for the noise.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
