Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB2091DFD63
	for <lists+openwrt-devel@lfdr.de>; Sun, 24 May 2020 08:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7y5c/1nKNfU0OXYuySzC+K30c3CySNi+Y24b9EL4lVU=; b=u317YDTHNxxXRy4zkErVp2r2P4
	P2jrwqeAxkl8uboHA+qV7oB2kkSu2C6RqfPKAI2CGGdwGP2Lu0BLFqeKzNb/Oxf8e5U/tVowMxRmR
	ksMiDpttKEHqsRYYe+uDCAend/t0dnzBHR/rU0iqKmRXgH4xRy8srh49AYFxUBA6kXoHYdrjJmNE4
	M2hDLxtO8Z6o94MgrBvfIG0GCbXnUFVfD4syoPcT3/asFN7fwHB0DmHfwXLvD/uuhYXim0Xvu+nvs
	uZkEFrgI+zt0v8saEx8sDIRMAD5rkr4hdfCDciCeNrH8HvZHobIBHroLCCIDbYPVmyZ0MY3qsNjTA
	sEuDKVOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcjis-0004sf-7H; Sun, 24 May 2020 06:02:58 +0000
Received: from forward100p.mail.yandex.net ([77.88.28.100])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcjib-0004n2-Tp
 for openwrt-devel@lists.openwrt.org; Sun, 24 May 2020 06:02:45 +0000
Received: from forward100q.mail.yandex.net (forward100q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:4b:0:640:4012:bb97])
 by forward100p.mail.yandex.net (Yandex) with ESMTP id C037159804BA;
 Sun, 24 May 2020 09:02:21 +0300 (MSK)
Received: from mxback8q.mail.yandex.net (mxback8q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:42:0:640:b38f:32ec])
 by forward100q.mail.yandex.net (Yandex) with ESMTP id BB8407080004;
 Sun, 24 May 2020 09:02:21 +0300 (MSK)
Received: from vla5-445dc1c4c112.qloud-c.yandex.net
 (vla5-445dc1c4c112.qloud-c.yandex.net [2a02:6b8:c18:3609:0:640:445d:c1c4])
 by mxback8q.mail.yandex.net (mxback/Yandex) with ESMTP id SECmmaTtPW-2LGeG1co; 
 Sun, 24 May 2020 09:02:21 +0300
Received: by vla5-445dc1c4c112.qloud-c.yandex.net (smtp/Yandex) with ESMTPSA
 id lcPzUdOT2V-2Ko0J75o; Sun, 24 May 2020 09:02:20 +0300
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (Client certificate not present)
To: admin@kryma.net
From: Yaroslav Petrov <info@lank.me>
Message-ID: <6678f3f8-c9bb-4fc4-e4a9-ca09f3639a2a@lank.me>
Date: Sun, 24 May 2020 08:02:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:77.0) Gecko/20100101
 Thunderbird/77.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_230242_137969_C614D6EE 
X-CRM114-Status: UNSURE (   6.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [77.88.28.100 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [77.88.28.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
Subject: [OpenWrt-Devel] ath79: add support for COMFAST CF-E130N v2
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Pavel,


What about you patch ? It will be great to add COMFAST CF-E130N v2 to 
openwrt master. Do you need help ?


Best regards
Yaroslav Petrov


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
