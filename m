Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE4E4DD5F
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Jun 2019 00:16:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P8cE6YEkgTujb4+Qtou18YbqP0sKQRMp03PuOZm5Ygk=; b=ES/sgMtXfC16Vd
	9MabuUMOAJjFU0ekNZ6ixEBvJNHmxWsZI5z2TQMP9bmXq7YXImPczj4thdgaZ5L1ADKnqqVikbXqV
	wY3hR2SlmkhnR2SlhA7nuz2PvXOaQa7/Asbi05aCTQjkV9MFUQFfpanaE8mvJxyi+bz7aUyZEQ0fG
	w6RMVlfQ27jN4OomMstOfbVc2401qObx/HG99ib2FIZpir4PMAL2EthMuGnynOTShKux8o/F4Pu6y
	jrQTdK20SRWE3+rpKXYcAvFhwRznbI3fceXGbXMONtP6jMODKyIcIEHIgMytZ9DeL+YksCIFjJUJD
	MAFufoM2FgQxhNzDIEag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he5M5-0004xh-A9; Thu, 20 Jun 2019 22:16:29 +0000
Received: from smtp.soverin.net ([159.69.232.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he5Lu-0004x9-Vi
 for openwrt-devel@lists.openwrt.org; Thu, 20 Jun 2019 22:16:21 +0000
Received: from soverin.net by soverin.net
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=oranjevos.nl;
 s=default; t=1561068967;
 bh=k4vLk1yBIhVv9fprUnCJREqM2WUE+Ml/6PTvI3yh8Bo=;
 h=Subject:From:In-Reply-To:Date:Cc:References:To:From;
 b=rZRQMbLkp/4MW36Hv3zcw+dSwbzL1B7BfU4POWuuONoRabmZXbvxqiofeyBjcRDmw
 6Q2zkRYuq1Ad/NEgNqhDT8mPEfGlfBev7hm8UDYR+Unmt4LS986l+KXb0Rny5UFm+x
 J4fa+X3KrQkDvgEO7IAHwPc9mTek87cJhouF46m8=
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <20190619094138.5431-1-tautvydas.b@8devices.com>
Date: Fri, 21 Jun 2019 00:16:06 +0200
Message-Id: <1A94C73B-3C8D-4052-9616-469E9C9E18C4@oranjevos.nl>
References: <20190619094138.5431-1-tautvydas.b@8devices.com>
X-Virus-Scanned: clamav-milter 0.100.3 at c03mi01
X-Virus-Status: Clean
To: Tautvydas Belgeras <tautvydas.b@8devices.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_151619_173283_70619AB8 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [159.69.232.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v2] uqmi: add explicit check for message
 type when expecting a response
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


Op 19 jun. 2019, om 11:41 heeft Tautvydas Belgeras <tautvydas.b@8devices.com> het volgende geschreven:
> 
> When the utility sends a request it expects a response type message,
> but does not explicitly check for it. When a device stays idle for
> some time, it switches into a sleep mode, and notifies the utility with an
> identification type message. In some configurations the device only sends
> this identification message when triggered by the utility, in this case by
> the request message. What the utility gets is two messages at the same time -
> an identification and a response. When it tries to decode former it obviously
> fails, because it is not what it expected.
> 
> Signed-off-by: Tautvydas Belgeras <tautvydas.b@8devices.com>
> ---
> dev.c | 6 ++++++
> 1 file changed, 6 insertions(+)
> 
> diff --git a/dev.c b/dev.c
> index a586157..5f6967e 100644
> --- a/dev.c
> +++ b/dev.c
> @@ -79,6 +79,12 @@ static void qmi_process_msg(struct qmi_dev *qmi, struct qmi_msg *msg)
> 	struct qmi_request *req;
> 	uint16_t tid;
> 
> +	if (msg->service == QMI_SERVICE_CTL && msg->flags != QMI_SERVICE_FLAG_RESPONSE) {
> +		return;
> +	} else if (msg->flags != QMI_SERVICE_FLAG_RESPONSE) {
> +		return;
> +	}
> +
After return no use exists for the else clause, so this is the same:
+	if (msg->service == QMI_SERVICE_CTL && msg->flags != QMI_SERVICE_FLAG_RESPONSE) {
+		return;
+	}
+	if (msg->flags != QMI_SERVICE_FLAG_RESPONSE) {
+		return;
+	}

As the test on msg->service is also superfluous, the above can again be simplified to:
+	if (msg->flags != QMI_SERVICE_FLAG_RESPONSE) {
+		return;
+	}

If that's not correct, then the original cannot be either.


> 	if (msg->qmux.service == QMI_SERVICE_CTL)
> 		tid = msg->ctl.transaction;
> 	else
> -- 
> 2.18.1
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
