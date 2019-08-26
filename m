Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99BEC9CD94
	for <lists+openwrt-devel@lfdr.de>; Mon, 26 Aug 2019 12:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-ID:References:In-Reply-To:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+EEFbn+vOEQFZohOF+hPptYLkAJMZR+bIclC7aZ8MD4=; b=JLZeegqlMBcWLb2i1O3ppDenw
	7kYJ9L3mFqf337Y/pl4aWSYocD6INzziSyQ25uwgnkf4WWeMe9HR7el3C1a6tszve0qdLKW10A6uL
	ZbZnj5qDTR/Qai+oIbAckXH98sanMz9kDLtkAt67r+0vt5l3YRKMKcDfGOjTKeeUYcSxxFWcJFvr6
	xwUtnQpg4y/Bx9rqrjfyyfwYJltVJSs4HULFFDFUXXuACADoD2HJjDZf13MYVnjZjo8UjckLEaeP4
	YB+CEmMC+cq0dxDh2BwwD0Gp7Aw9CNJxfKK8ywxzaVf8JPfnPtrCCF1tVIBmO3hUml5KjZ8q2sgtl
	Pf2uIRH8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2CXp-0003z3-Jw; Mon, 26 Aug 2019 10:48:17 +0000
Received: from host-88-217-225-28.customer.m-online.net ([88.217.225.28]
 helo=mail.dev.tdt.de)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2CXf-0003vC-Ku
 for openwrt-devel@lists.openwrt.org; Mon, 26 Aug 2019 10:48:09 +0000
Received: from mail.dev.tdt.de (localhost [IPv6:::1])
 by mail.dev.tdt.de (Postfix) with ESMTP id D3D4720968;
 Mon, 26 Aug 2019 10:48:02 +0000 (UTC)
MIME-Version: 1.0
Date: Mon, 26 Aug 2019 12:48:02 +0200
From: Martin Schiller <ms@dev.tdt.de>
To: nbd@nbd.name
Organization: TDT AG
In-Reply-To: <20190704113537.22078-1-ms@dev.tdt.de>
References: <20190704113537.22078-1-ms@dev.tdt.de>
Message-ID: <4454fadb211809fbcceab6dc465a1b7a@dev.tdt.de>
X-Sender: ms@dev.tdt.de
User-Agent: Roundcube Webmail/1.1.5
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
 autolearn_force=no version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.dev.tdt.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_034807_850133_23E83162 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
Subject: Re: [OpenWrt-Devel] [PATCH uqmi] nas: add --get-plmn
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
Cc: openwrt-devel@lists.openwrt.org, bjorn@mork.no
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Can somebody please take a look at this patch.

It's really necessary to fix the problem in the qmi proto handler.

Thanks,
Martin

On 2019-07-04 13:35, Martin Schiller wrote:
> This command is needed in the qmi proto handler to check if the plmn
> is already set to 'auto'.
> 
> The reason for this is, that setting the plmn to 'auto' will implicitly
> lead to a (delayed) network re-registration, which could further lead
> to some timing related issues in the qmi proto handler.
> 
> Signed-off-by: Martin Schiller <ms@dev.tdt.de>
> ---
>  commands-nas.c | 31 +++++++++++++++++++++++++++++++
>  commands-nas.h |  2 ++
>  2 files changed, 33 insertions(+)
> 
> diff --git a/commands-nas.c b/commands-nas.c
> index 5874bfb..1f7445d 100644
> --- a/commands-nas.c
> +++ b/commands-nas.c
> @@ -293,6 +293,37 @@ cmd_nas_get_serving_system_prepare(struct qmi_dev
> *qmi, struct qmi_request *req,
>  }
> 
>  static void
> +cmd_nas_get_plmn_cb(struct qmi_dev *qmi, struct qmi_request *req,
> struct qmi_msg *msg)
> +{
> +	struct qmi_nas_get_system_selection_preference_response res;
> +	static const char *modes[] = {
> +		[QMI_NAS_NETWORK_SELECTION_PREFERENCE_AUTOMATIC] = "automatic",
> +		[QMI_NAS_NETWORK_SELECTION_PREFERENCE_MANUAL] = "manual",
> +	};
> +	void *c;
> +
> +	qmi_parse_nas_get_system_selection_preference_response(msg, &res);
> +
> +	c = blobmsg_open_table(&status, NULL);
> +	if (res.set.network_selection_preference) {
> +		blobmsg_add_string(&status, "mode",
> modes[res.data.network_selection_preference]);
> +	}
> +	if (res.set.manual_network_selection) {
> +		blobmsg_add_u32(&status, "mcc", 
> res.data.manual_network_selection.mcc);
> +		blobmsg_add_u32(&status, "mnc", 
> res.data.manual_network_selection.mnc);
> +	}
> +
> +	blobmsg_close_table(&status, c);
> +}
> +
> +static enum qmi_cmd_result
> +cmd_nas_get_plmn_prepare(struct qmi_dev *qmi, struct qmi_request
> *req, struct qmi_msg *msg, char *arg)
> +{
> +	qmi_set_nas_get_system_selection_preference_request(msg);
> +	return QMI_CMD_REQUEST;
> +}
> +
> +static void
>  cmd_nas_network_scan_cb(struct qmi_dev *qmi, struct qmi_request *req,
> struct qmi_msg *msg)
>  {
>  	static struct qmi_nas_network_scan_response res;
> diff --git a/commands-nas.h b/commands-nas.h
> index 9ebfa00..4b175f9 100644
> --- a/commands-nas.h
> +++ b/commands-nas.h
> @@ -24,6 +24,7 @@
>  	__uqmi_command(nas_set_network_modes, set-network-modes, required,
> CMD_TYPE_OPTION), \
>  	__uqmi_command(nas_initiate_network_register, network-register, no,
> QMI_SERVICE_NAS), \
>  	__uqmi_command(nas_set_plmn, set-plmn, no, QMI_SERVICE_NAS), \
> +	__uqmi_command(nas_get_plmn, get-plmn, no, QMI_SERVICE_NAS), \
>  	__uqmi_command(nas_set_mcc, mcc, required, CMD_TYPE_OPTION), \
>  	__uqmi_command(nas_set_mnc, mnc, required, CMD_TYPE_OPTION), \
>  	__uqmi_command(nas_network_scan, network-scan, no, QMI_SERVICE_NAS), 
> \
> @@ -44,6 +45,7 @@
>  		"  --set-plmn:                       Register at specified 
> network\n" \
>  		"    --mcc <mcc>:                    Mobile Country Code (0 - 
> auto)\n" \
>  		"    --mnc <mnc>:                    Mobile Network Code\n" \
> +		"  --get-plmn:                       Get preferred network
> selection info\n" \
>  		"  --get-signal-info:                Get signal strength info\n" \
>  		"  --get-serving-system:             Get serving system info\n" \


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
