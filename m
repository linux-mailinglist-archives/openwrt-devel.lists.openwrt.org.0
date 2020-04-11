Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 875A81A4F93
	for <lists+openwrt-devel@lfdr.de>; Sat, 11 Apr 2020 13:43:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Mime-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=njdUonShhpZZ2kwei8fOh5SXQPTIN061mAkmklj4zdE=; b=T54sjOW01teM6b
	RmJA/QOBpQzUI3HnjrIwK958EzLUuGSPgkJyCxJqPud+V+x521G67v6mq6nQ35xT4KBl6xWZkUofI
	FtGbBqKFeSbDx/cTJwJgOy5XHWmX+ePDpyMQlj2ibhQtcIHUbFeHBeCHSi95SFe9m5MHnWrt6kanN
	Fn9ocnSeN/wemU9O3mev4sErM1oL638WLWpfsMNFhkI5dpIdeWmq92LLoYpVgGdwEbpDK/HaegfCi
	LAkqIJJyFB/UfmoY19vYtAEKZUyPpRrlS8/Ir2i8dODYM/862tAyTd+0zpw+5X0BuKgdz5rGR3HwW
	IUBjhGOG36JRbD845QRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNEXs-0004Im-C7; Sat, 11 Apr 2020 11:43:32 +0000
Received: from server01.couprie.net ([159.69.219.95] helo=mail.couprie.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNEXk-0004IM-DM
 for openwrt-devel@lists.openwrt.org; Sat, 11 Apr 2020 11:43:25 +0000
X-Virus-Scanned: Yes
To: openwrt-devel@lists.openwrt.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=couprie.net; s=mail;
 t=1586605392; bh=6WH/R2YKzXjnj+8XejMi/JSc62QVVAUh9TkYSuQFu0I=;
 h=To:From:Subject;
 b=bb3iglJZ7yWXL1VrWBGJhN0Fy4LHONZD5NBaZGU3bCwZuCe5OHKuMkOGA3GCMRwkR
 I6hymttbYFvGOYXT5MfOr+vH3avK0UpyrSEbWbC+zsoXbBVKUmbPf1Cek6wk3qZduf
 +2Yjtbs9iF9Dja4T2RlC6x2RD1MXHsJZhY3jkoIpIQCz9Zz/+A96qM1LxIbVMHC6IM
 aGI9pVrltN46vYIqFmEGFY1hNKyuhAVcvgOZG6L+KhlvDG1i/iAW8xjaRzTzDRbsnC
 mcFRR6cHvDDawTLqz4F0whDLyPatw2O11ghFGx8eepNRpcpyK7zgIjc7BkBSniAZHH
 1+zyV6PVU6UnQ==
From: Perry Couprie <perry@couprie.net>
Message-ID: <65ed17fe-91cd-5398-5bdf-e77bf1324d76@couprie.net>
Date: Sat, 11 Apr 2020 13:43:11 +0200
Mime-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_044324_595695_9A7652C6 
X-CRM114-Status: UNSURE (   3.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] umdns not listening on any interface (openwrt trunk)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

I want to use umdns, but i found that it is not listening on any network 
interface.

When starting umdns i get invalid command.

On openwrt 19.07 it work, but in openwrt trunk not.

I looked at the umdns script and i found the following line.

ubus call umdns set_config '{ "interfaces": [ "br-lan" ] }'

Why does it work on openwrt 19.07 and not the latest openwrt trunk version ?

Perry


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
