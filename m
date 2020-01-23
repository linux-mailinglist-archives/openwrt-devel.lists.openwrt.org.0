Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F071469FB
	for <lists+openwrt-devel@lfdr.de>; Thu, 23 Jan 2020 14:55:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kf6cqJyHxBOesCqgxRrbrOVUYrDFKa8bmgefpl+/e7M=; b=g3vrNQHZxgQUnO
	Sb1kHMPW7CR99xurfLnbhsb/2hTO4rOJ9lFfRjQIsJa5gNLOzXhuB8RTXavsTg4AikuLnJRzsr1Xn
	/PbcuLZaJPkf9+q20eJ6pOjfIQV4cJKaMs4GybiuQFWS7qGXnEqMQnaLWhfInivM+GE72iXu9Wt5R
	NXDRXxpYajYZeT/hRAsf/5CtbAzoHPaCJfbco+XDtmvSt2+BHUYS3iTOrl7QQba/Dc3GvdU0hYZYK
	Qyz7VvKwWF7TWY1QJaj7Q/pUf9rvsTOoMsKBRmlor10UjXmeYpnXqGooiuC18li+tcoBncEaiZjfK
	8jOX03i96RPkM2yYA1wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iucx2-0003EL-6u; Thu, 23 Jan 2020 13:55:16 +0000
Received: from web0119.zxcs.nl ([2a06:2ec0:1::119])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iucwo-0002Pn-HN
 for openwrt-devel@lists.openwrt.org; Thu, 23 Jan 2020 13:55:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=oranjevos.nl; s=x; h=To:References:Message-Id:Content-Transfer-Encoding:Cc:
 Date:In-Reply-To:From:Subject:Mime-Version:Content-Type:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wVZhmyUMd2ZnX1TeOZW9x3pUbrHYOILI5fzOxBMA93U=; b=NhLCIx76YZ+k1rp8SYp0/QLqeB
 V/nEyOKQrvZxQ2L+Esy/6ZbxfITU8OKubUEsc0O3hTE1TxNi/T4AFv5raCXCJGH2ogs8nBRMB0drG
 SxHz2GT0aUFrYZ8yDYCvVI2INggE7LfwNXPGii4Toifbnpe3phzHR1DvcmR1d9ATUesUB+yZdGi3J
 jbs60x/oBrwi0NTN429f6snjYR6o/GA86D9RL0crB/EnPqFxB/LFAShQKwZ9gK2qpJ9VyhwOh5Zjy
 VAVU3Rjy0dtrq2875/xpM651f6k7nrbPhx+gZo2Vm92qnBoVW79h5zWg+0qArFDfArTrpQVMOITVd
 7v8V5B+g==;
Received: from dhcp-077-248-110-239.chello.nl ([77.248.110.239]:49518
 helo=boekje.achterlaan)
 by web0119.zxcs.nl with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92.3) (envelope-from <por@oranjevos.nl>)
 id 1iucwj-003DED-Us; Thu, 23 Jan 2020 14:54:57 +0100
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
From: Paul Oranje <por@oranjevos.nl>
In-Reply-To: <20200123131527.23003-1-ondrej.votava@cvut.cz>
Date: Thu, 23 Jan 2020 14:54:56 +0100
Message-Id: <EA571B6C-459F-4215-9FFB-14CF09E62D32@oranjevos.nl>
References: <20200120095305.18132-1-ondrej.votava@cvut.cz>
 <20200123131527.23003-1-ondrej.votava@cvut.cz>
To: ondrej.votava@cvut.cz
X-Mailer: Apple Mail (2.3608.40.2.2.4)
X-Authenticated-Id: paul@oranjevos.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_055503_244899_74EAB2E3 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [PATCH] procd: show process's exit code
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

Op 23 jan. 2020, om 14:15 heeft ondrej.votava@cvut.cz het volgende geschreven:
> 
> +static int
> +instance_exit_code(int ret)
> +{
> +	if(WIFEXITED(ret)) {
> +		return WEXITSTATUS(ret);
> +	}
> +	else if (WIFSIGNALED(ret)) {
The else should be omitted because, when the previous if condition is met, the program flow unconditionally returns from the function.
So just use: if (WIFSIGNALED(ret)) {
> +		return 128 + WTERMSIG(ret);
> +	}
> +	return 1;
> +}
> +
> static void
> instance_exit(struct uloop_process *p, int ret)
> {
> @@ -574,6 +586,7 @@ instance_exit(struct uloop_process *p, int ret)
> 
> 	DEBUG(2, "Instance %s::%s exit with error code %d after %ld seconds\n", in->srv->name, in->name, ret, runtime);
> 
> +	in->exit_code = instance_exit_code(ret);
> 	uloop_timeout_cancel(&in->timeout);
> 	service_event("instance.stop", in->srv->name, in->name);
> 
> @@ -1091,6 +1104,7 @@ instance_init(struct service_instance *in, struct service *s, struct blob_attr *
> 	in->proc.cb = instance_exit;
> 	in->term_timeout = 5;
> 	in->syslog_facility = LOG_DAEMON;
> +	in->exit_code = 0;
> 
> 	in->_stdout.fd.fd = -2;
> 	in->_stdout.stream.string_data = true;
> @@ -1124,6 +1138,8 @@ void instance_dump(struct blob_buf *b, struct service_instance *in, int verbose)
> 	if (in->command)
> 		blobmsg_add_blob(b, in->command);
> 	blobmsg_add_u32(b, "term_timeout", in->term_timeout);
> +	if (!in->proc.pending)
> +		blobmsg_add_u32(b, "exit_code", in->exit_code);
> 
> 	if (!avl_is_empty(&in->errors.avl)) {
> 		struct blobmsg_list_node *var;
> diff --git a/service/instance.h b/service/instance.h
> index 42cc4be..05a2fc3 100644
> --- a/service/instance.h
> +++ b/service/instance.h
> @@ -62,6 +62,7 @@ struct service_instance {
> 	char *seccomp;
> 	char *pidfile;
> 	int syslog_facility;
> +	int exit_code;
> 
> 	uint32_t term_timeout;
> 	uint32_t respawn_timeout;
> -- 
> 2.21.0 (Apple Git-122.2)
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
