Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE5813158E
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 17:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:
	From:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PnvaGCDeITQ2UeOtr6Zdo6FDPySiDK9m/frrWyR4WgI=; b=LFazdXeE5D0ImD
	ndv01nW0hJWDhY5OxhrSyYPF/i6ml/Dvk+gmKRHYAwD69jYU6tW+VChefW/Xdzp73sNS4SD5DTMst
	lP8Y7oahscaSE3wxzC8A1e1SxgtYE/eoK1ZpJewR6kCOfBud6S9NWr+UAWbZsar0zJEOXTmOOaxru
	2MLeSx5MqsF6FYxJnJihf8JJruz5YVzrhdvO2E9npIVy38WsWmaAIBD/MK1WVbP1v4vfH0HHnh3Gc
	trm14Y6Yh9ITGIxLFWs1PU2PLdmahehApxsNFke5a1P3zr+Yp3+qcTlfvnweCHXlSm8FAurMdViDv
	oDBpOhtCdqOexIuAWYqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioUnf-0003qy-GE; Mon, 06 Jan 2020 16:00:15 +0000
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioUnO-0003qH-EX
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 15:59:59 +0000
Received: by mail-wm1-x336.google.com with SMTP id b19so15433406wmj.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Jan 2020 07:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:from:subject:message-id:date:user-agent:mime-version
 :content-language:content-transfer-encoding;
 bh=w+yyoVL0jK3pFIHAGd0tWPMXHRfd6URc9eXDMw4EazA=;
 b=N1v7Encka5pIv2onLoRuyg4YPf31isSLq78BRz/poXdhpRpWywmqmifKuMs9TDSXuO
 8rBxD4gxqgwSTChCQGgY8UOJOyOoYYPgIoRZYRYHJkTnkzICBs/I+4ZQvP+FtL5xV/ez
 crVWLqLR/QeHle8/WlsArfeyQB/ARC4mwSuhwksQg6VEcZxAGwvCx4EOA3oRuaHdPLI8
 JOkUIzCwQ8H/EF2/+W+GpR1vWAwYEocTFznxkFr8HCIXE3dQs3h/AmVStQ/6xzeo9kJh
 wMNL8dvfYD0Tgb+qn5o0oqBYjB1Kleyh9UeoSgUCAkV/mkRIbcg4Aau7egtSkom/RoNF
 N39w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:from:subject:message-id:date:user-agent
 :mime-version:content-language:content-transfer-encoding;
 bh=w+yyoVL0jK3pFIHAGd0tWPMXHRfd6URc9eXDMw4EazA=;
 b=FzegsFw/cHo5H5rMBS2cykW9InJ+BQx/G/hoXyCpbPnW+bBOiKrSA86f5eqOoSAN2k
 w58hRkh7CQsR5aLwVGAvjyOd/dhvFvW3Qtm6+5ML7fo/uLgI8JWSQj1feOY5p3i+uLRc
 8mKyJiQQAZFlOcKS8xk3/Ga/w0tBNRV8rz8W0Yl20wyiHj0l9fKq7DrFqBcjPX+dKHD4
 EeO2bKP6eXw3HrZEt96hBJV7tR40bN8VLZjFvf9beL/eKT3dMgyGqh7vDakzIk0eWFpZ
 1v1Er6qGT1SjkIvzgpk+uH2u/FFIYVpfOjiKLctssPj7oQg+uY96IU4XPZD5p4U2EAHN
 ymbg==
X-Gm-Message-State: APjAAAXqkdj7ZFmJ1YbvaA0Wm2qIK/8DMtHnwdof/CouN3g9/Za77iDm
 Rr637PPoPFej7ku4xRr1YrRfviTF
X-Google-Smtp-Source: APXvYqyQRXy/NNJZCwMn1KW7ARSoLUyQvTqsVwz+4X8FmQE4BQV5w7NxiCHzeVwls6L+ojfDw3yTHw==
X-Received: by 2002:a05:600c:2059:: with SMTP id
 p25mr36296876wmg.161.1578326392074; 
 Mon, 06 Jan 2020 07:59:52 -0800 (PST)
Received: from localhost
 (p200300F66706DFAC1C7FBAE9057843F6.dip0.t-ipconnect.de.
 [2003:f6:6706:dfac:1c7f:bae9:578:43f6])
 by smtp.gmail.com with ESMTPSA id w13sm73250970wru.38.2020.01.06.07.59.51
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Jan 2020 07:59:51 -0800 (PST)
To: openwrt-devel@lists.openwrt.org
From: e9hack <e9hack@gmail.com>
Message-ID: <b9a184d2-a2bc-5b53-8daa-f939eb9915c4@gmail.com>
Date: Mon, 6 Jan 2020 16:59:47 +0100
User-Agent: Thunderbird
MIME-Version: 1.0
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_075958_512885_53B0DE94 
X-CRM114-Status: UNSURE (   6.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (e9hack[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] uhttpd/luci/rpcd is broken?
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

Hi,
 
it looks like that uhttpd/luci/rpcd is broken again. The call 'ubus call luci-rpc getWirelessDevices' does fail 'Command failed: Request timed out'.

Regards,
Hartmut

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
