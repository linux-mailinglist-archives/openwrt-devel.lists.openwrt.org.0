Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE7011EB85
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 21:07:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a4old1PP/MhOGfdJW5iBiwb68JAhi8wYj7MDl8/wp+k=; b=m818RVjzl/6yrQ
	j+/i7jCnINSf+mLx+ZGk7FhCJhsdnH0ngK+8/nJi4qdNXEAud1SuVsZBjsjyoC2j2VOllMA0s08vm
	1A7LkOjW8ov/1fkXqSGUuHDtnDIkMQAAVtyD5nM3frAp2Y3BGu8Gu0jISm08Bw6qjSrHWA4ChZ95D
	KUMBlAZsFXEjOeh3QNqV7EduKGrwyCd4d/NSsam6+gWf3B50reCEv7B+IjxFUCFegXawUB9lsOKHp
	nswZW8LcjSOuQn88+BoAuIRrY/d8oFfutw02Zf0URlsWP8mMlqZEmHrAF8WqL9D0ANFd/8phjeSQ3
	wPSmBgrRlw1w+lUpxuxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifrDv-0000Ke-2X; Fri, 13 Dec 2019 20:07:39 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifrDo-0000KF-1c
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 20:07:33 +0000
Received: by mail-lj1-x241.google.com with SMTP id j6so17138lja.2
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Dec 2019 12:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=r28S9i6rJBITSUIKR391DyjlYRG5U4cBfwXG76ZNXgg=;
 b=iUdP56gaw4hNOcUbr6zq8sLwIVUsp3+1aT/bJpeoxJlIhL7bWB+7KTiyJ3/gWn9usB
 BIJYwreMXU0ZMa0Hbgqb3TN5k+DBzmIVnlw3JxpCV6MYksn4g3dE7KhqB8ThdwJtpbzt
 9jqKUlq/clfsUmoMyaaqwylenKc2/FD1CUj49pQdUxAI79dZSgYoov5J5f+ktIqKchui
 ih2CvQajaxC2xYvOmkWvt1HnFZ3XccFVZgtjd8FBXT6eg8lZzNFab4v6A++6yIlFbA5W
 MZc/ThusxiUMEVlz5RL6Dzx+JhtHXDCtaHckfftcyjtvhKEQm4t2KF+b9xSq5RL6Bc6E
 c6Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=r28S9i6rJBITSUIKR391DyjlYRG5U4cBfwXG76ZNXgg=;
 b=kRARh0MmjTVxH7pUDQjJVCdQ1CWrhfDGxQK6yEJoz1KR4XPZZt0YS/kSrOFk9o2Brw
 EiQkZDUZ6+IyZicrd+uQoUOeqPtgsqvUdGshcdvAISMJjCNOs6uO45D8JW9pQrgs+vtC
 jCJEM90i5Q/syCm4vLydYO1J5taF7pU9PEsLcoKr0MuxhPJmRdONvjoLnrRwJNDOvUZv
 T6cUo9MoO2ZPcjyy8vs/utF0hwxng1OWKVLyqL/1gdmlT/ahyKX3kxTWL6i9/xoBp0Ub
 dAag0YCF2xohIXEPE0aP7AM/dnK/uyrf0aSaW5b8r3BdMhp5VkG7hPPMIlWSTpzOf7z9
 OVpg==
X-Gm-Message-State: APjAAAW4mZPaB6AqakfmUNd0bQmz93gEY8Hf0/Na8/d8MAbmD990uXD4
 KNPw66VacbcKqiGG4YzR0lI=
X-Google-Smtp-Source: APXvYqz86f8Xbu4RQ9WeSJV0hnh8WgLmw6GoSY2/rE/Wz05c+d7Z2vv9ikyPmyf7Gy8ieUDi4REC/A==
X-Received: by 2002:a2e:9610:: with SMTP id v16mr11178870ljh.88.1576267649676; 
 Fri, 13 Dec 2019 12:07:29 -0800 (PST)
Received: from home.paul.comp (paulfertser.info.
 [2001:470:26:54b:226:9eff:fe70:80c2])
 by smtp.gmail.com with ESMTPSA id f7sm5430062ljj.58.2019.12.13.12.07.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 12:07:29 -0800 (PST)
Received: from home.paul.comp (localhost [127.0.0.1])
 by home.paul.comp (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTP id
 xBDK7QKo014817; Fri, 13 Dec 2019 23:07:26 +0300
Received: (from paul@localhost)
 by home.paul.comp (8.15.2/8.15.2/Submit) id xBDK7OP0014816;
 Fri, 13 Dec 2019 23:07:24 +0300
Date: Fri, 13 Dec 2019 23:07:23 +0300
From: Paul Fertser <fercerpav@gmail.com>
To: Sven Roederer <devel-sven@geroedel.de>
Message-ID: <20191213200723.GX11070@home.paul.comp>
References: <20191213195046.13358-1-devel-sven@geroedel.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213195046.13358-1-devel-sven@geroedel.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_120732_115603_8066123A 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (fercerpav[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH 19.07] ath79: add support for gl-ar750
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
Cc: Luochongjun <luochongjun@gl-inet.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hello,

On Fri, Dec 13, 2019 at 08:50:46PM +0100, Sven Roederer wrote:
>  .../ath79/base-files/etc/board.d/02_network   |   5 +
>  .../etc/hotplug.d/firmware/11-ath10k-caldata  |   1 +
>  .../ath79/dts/qca9531_glinet_gl-ar750.dts     | 142 ++++++++++++++++++
>  target/linux/ath79/image/generic.mk           |   9 ++

Is this not missing the additions to board.d/01_leds ?

-- 
Be free, use free (http://www.gnu.org/philosophy/free-sw.html) software!
mailto:fercerpav@gmail.com

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
